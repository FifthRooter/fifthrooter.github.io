---
layout: page
title: vintage bikes
permalink: /bikes/
---

I love old vintage city/road/race bikes, and luckily, living in Europe, I have access to a lot of them, and get to ride them daily. Here are my current projects I've finished, usually they lack good before pictures, but at least sometimes I have made some progress pics as well.

{% raw %}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.12.0/baguetteBox.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.12.0/baguetteBox.min.js"></script>
 
<style>
.image-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 10px;
}

.image-grid img {
  width: 100%;
  height: auto;
}
</style>
{% endraw %}

<div class="image-grid">
  {% for file in site.static_files %}
    {% if file.path contains 'assets/img/bikes/red_peugeot/' and file.extname == '.webp' %}
      <a href="{{ file.path }}"><img src="{{ file.path }}" alt="{{ file.name }}"></a>
    {% endif %}
  {% endfor %}
</div>

{% raw %}
<script>
  baguetteBox.run('.image-grid');
</script>
{% endraw %}