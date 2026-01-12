---
layout: page
icon: fas fa-users
order: 3
title: Talks & Community
---

Beyond my professional work, I'm passionate about **community building** and **knowledge sharing**. I believe in giving back to the tech community and bridging connections across cultures.

---

## Leadership & Community Involvement

{% for role in site.data.community.leadership %}
<div class="community-card">
  <div class="community-header">
    <div class="community-title">
      <h3>{{ role.title }}</h3>
      <span class="org-name">{{ role.organization }}</span>
      {% if role.organization_zh %}
      <span class="org-name-zh">{{ role.organization_zh }}</span>
      {% endif %}
    </div>
    <span class="period-badge">{{ role.period }}</span>
  </div>

  <p class="community-description">{{ role.description }}</p>

  {% if role.highlights %}
  <ul class="highlight-list">
    {% for highlight in role.highlights %}
    <li>{{ highlight }}</li>
    {% endfor %}
  </ul>
  {% endif %}

  {% if role.website %}
  <div class="community-links">
    <a href="{{ role.website }}" class="link-btn" target="_blank">
      <i class="fas fa-external-link-alt"></i> Website
    </a>
  </div>
  {% endif %}
</div>
{% endfor %}

---

## Talks & Workshops

{% for talk in site.data.community.talks %}
<div class="talk-card">
  <div class="talk-header">
    <div class="talk-title">
      <h3>{{ talk.title }}</h3>
      <span class="event-name"><i class="fas fa-calendar-alt"></i> {{ talk.event }} &middot; {{ talk.date }}</span>
    </div>
  </div>

  <p class="talk-description">{{ talk.description }}</p>

  {% if talk.highlights %}
  <ul class="highlight-list">
    {% for highlight in talk.highlights %}
    <li>{{ highlight }}</li>
    {% endfor %}
  </ul>
  {% endif %}

  {% if talk.slides_url or talk.video_url %}
  <div class="talk-links">
    {% if talk.slides_url %}
    <a href="{{ talk.slides_url }}" class="link-btn" target="_blank">
      <i class="fas fa-file-powerpoint"></i> Slides
    </a>
    {% endif %}
    {% if talk.video_url %}
    <a href="{{ talk.video_url }}" class="link-btn link-btn-primary" target="_blank">
      <i class="fas fa-play-circle"></i> Watch
    </a>
    {% endif %}
  </div>
  {% endif %}
</div>

{% unless forloop.last %}<hr class="talk-divider">{% endunless %}

{% endfor %}

<style>
.community-card, .talk-card {
  margin-bottom: 1.5rem;
  padding: 1.25rem;
  background: var(--card-bg);
  border: 1px solid var(--main-border-color);
  border-radius: 8px;
  border-left: 3px solid var(--accent-bg);
}

.community-header, .talk-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  flex-wrap: wrap;
  gap: 0.75rem;
  margin-bottom: 0.75rem;
}

.community-title h3, .talk-title h3 {
  margin: 0 0 0.25rem 0;
  font-size: 1.05rem;
}

.org-name, .event-name {
  display: block;
  font-size: 0.85rem;
  color: var(--text-muted-color);
}

.org-name-zh {
  display: block;
  font-size: 0.8rem;
  color: var(--text-muted-color);
  opacity: 0.8;
}

.event-name i {
  margin-right: 0.25rem;
  color: var(--accent);
}

.period-badge {
  font-size: 0.75rem;
  padding: 0.25rem 0.6rem;
  background: var(--accent-bg);
  color: var(--accent);
  border-radius: 12px;
  font-weight: 500;
  white-space: nowrap;
}

.community-description, .talk-description {
  font-size: 0.9rem;
  line-height: 1.6;
  color: var(--text-color);
  margin-bottom: 0.75rem;
}

.highlight-list {
  margin: 0.75rem 0;
  padding-left: 1.2rem;
}

.highlight-list li {
  font-size: 0.85rem;
  line-height: 1.5;
  margin-bottom: 0.35rem;
  color: var(--text-color);
}

.community-links, .talk-links {
  display: flex;
  gap: 0.75rem;
  margin-top: 1rem;
}

.link-btn {
  display: inline-flex;
  align-items: center;
  gap: 0.35rem;
  font-size: 0.8rem;
  padding: 0.4rem 0.8rem;
  border-radius: 5px;
  text-decoration: none;
  color: var(--accent);
  border: 1px solid var(--accent);
  transition: all 0.15s;
}

.link-btn:hover {
  background: var(--accent);
  color: white;
  text-decoration: none;
}

.link-btn-primary {
  background: var(--accent);
  color: white;
}

.link-btn-primary:hover {
  opacity: 0.9;
}

.talk-divider {
  margin: 1.5rem 0;
  border: none;
  border-top: 1px solid var(--main-border-color);
}

hr {
  margin: 2rem 0;
  border: none;
  border-top: 1px solid var(--main-border-color);
}
</style>
