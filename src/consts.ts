import type { Metadata, Site, Socials } from "@types";

export const SITE: Site = {
  TITLE: "arbestor's cave",
  DESCRIPTION: "pay attention",
  EMAIL: "info@arbestor.xyz",
  NUM_POSTS_ON_HOMEPAGE: 5,
  NUM_PROJECTS_ON_HOMEPAGE: 3,
};

export const HOME: Metadata = {
  TITLE: "Home",
  DESCRIPTION: "pay attention",
};

export const BLOG: Metadata = {
  TITLE: "Blog",
  DESCRIPTION: "Notes, progress, and dispatches from the workbench.",
};

export const PROJECTS: Metadata = {
  TITLE: "Projects",
  DESCRIPTION: "Long-running things I'm tinkering on.",
};

export const SOCIALS: Socials = [
  {
    NAME: "GitHub",
    HREF: "https://github.com/FifthRooter",
  },
  {
    NAME: "Twitter",
    HREF: "https://twitter.com/arbestor",
  },
];