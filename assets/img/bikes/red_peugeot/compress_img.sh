#!/bin/bash

TARGET_PIXELS=3000000  # Aim for about 3 megapixels (adjust as needed)
QUALITY=80  # WebP quality (0-100, higher is better quality but larger file)

for file in *.jpg; do
  echo "Processing $file"
  
  # Get image dimensions and orientation
  read width height orientation <<< $(identify -format "%w %h %[EXIF:Orientation]" "$file" 2>/dev/null)
  
  if [ -z "$width" ] || [ -z "$height" ]; then
    echo "Error: Could not process $file. Skipping."
    continue
  fi

  # Calculate current pixels and scaling factor
  current_pixels=$((width * height))
  scale=$(bc -l <<< "sqrt($TARGET_PIXELS / $current_pixels)")
  
  # Calculate new dimensions
  new_width=$(bc <<< "scale=0; $width * $scale / 1")
  new_height=$(bc <<< "scale=0; $height * $scale / 1")
  
  # Create a temporary filename
  temp_file="${file%.jpg}.temp.jpg"
  
  # Resize the image and auto-orient
  convert "$file" -auto-orient -resize ${new_width}x${new_height} "$temp_file" 2>/dev/null
  
  # Check if the image is vertical (height > width) and rotate if necessary
  if [ "$height" -gt "$width" ]; then
    # Rotate the image 90 degrees clockwise
    convert "$temp_file" -rotate 90 "$temp_file"
  fi
  
  # Convert to WebP
  cwebp -metadata all -q $QUALITY "$temp_file" -o "${file%.jpg}.webp"
  
  # Remove temporary file
  rm "$temp_file"
  
  echo "Processed $file: ${width}x${height} -> ${new_width}x${new_height}"
done
