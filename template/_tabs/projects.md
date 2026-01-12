---
layout: page
icon: fas fa-code
order: 2
title: Projects
---

Side projects where I apply my expertise in **Data Engineering** and **AI/ML** to build practical solutions. These projects showcase end-to-end development skills—from system architecture and database design to AI integration and user-facing applications.

---

{% for project in site.data.projects %}
<div class="project-card">
  <div class="project-header">
    <h3>{{ project.name }}</h3>
    <span class="status-badge">{{ project.status }}</span>
  </div>

  <p class="project-tagline">{{ project.tagline }}</p>

  <div class="project-description">
    {{ project.description | markdownify }}
  </div>

  {% if project.features or project.highlights %}
  <ul class="feature-list">
    {% for feature in project.features %}
    <li>{{ feature }}</li>
    {% endfor %}
    {% for highlight in project.highlights %}
    <li>{{ highlight }}</li>
    {% endfor %}
  </ul>
  {% endif %}

  {% if project.tech_stack %}
  <div class="tech-stack">
    {% for stack in project.tech_stack %}
    <div class="stack-row">
      <span class="stack-label">{{ stack[0] | capitalize }}</span>
      <div class="stack-tags">
        {% for tech in stack[1] %}
        <code>{{ tech }}</code>
        {% endfor %}
      </div>
    </div>
    {% endfor %}
  </div>
  {% endif %}

  {% if project.screenshots and project.screenshots.size > 0 %}
  <div class="project-screenshots">
    {% for screenshot in project.screenshots %}
    <img src="{{ screenshot }}" alt="{{ project.name }} screenshot" class="project-screenshot" loading="lazy">
    {% endfor %}
  </div>
  {% endif %}

  {% if project.links.demo %}
  <div class="project-links">
    <a href="{{ project.links.demo }}" class="link-btn link-btn-primary" target="_blank">
      <i class="fas fa-external-link-alt"></i> Demo
    </a>
  </div>
  {% endif %}
</div>

{% unless forloop.last %}<hr>{% endunless %}

{% endfor %}

<style>
.project-card {
  margin-bottom: 2rem;
}

.project-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 0.75rem;
  margin-bottom: 0.5rem;
}

.project-header h3 {
  margin: 0;
  font-size: 1.1rem;
}

.status-badge {
  font-size: 0.7rem;
  padding: 0.2rem 0.6rem;
  background: var(--accent-bg);
  color: var(--accent);
  border-radius: 12px;
  font-weight: 500;
}

.project-tagline {
  font-size: 0.9rem;
  color: var(--text-muted-color);
  font-style: italic;
  margin-bottom: 1rem;
}

.project-description {
  font-size: 0.9rem;
  line-height: 1.6;
  margin-bottom: 1rem;
}

.feature-list {
  margin: 1rem 0;
  padding-left: 1.2rem;
}

.feature-list li {
  font-size: 0.85rem;
  line-height: 1.5;
  margin-bottom: 0.4rem;
  color: var(--text-color);
}

.tech-stack {
  margin: 1.5rem 0;
  display: flex;
  flex-direction: column;
  gap: 0.6rem;
}

.stack-row {
  display: flex;
  align-items: flex-start;
  gap: 0.75rem;
}

.stack-label {
  font-size: 0.8rem;
  font-weight: 500;
  color: var(--text-muted-color);
  min-width: 70px;
  padding-top: 0.15rem;
}

.stack-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.4rem;
}

.stack-tags code {
  font-family: 'SF Mono', 'Fira Code', 'Consolas', monospace;
  font-size: 0.75rem;
  padding: 0.2rem 0.5rem;
  background: var(--accent-bg);
  border: 1px solid var(--main-border-color);
  border-radius: 4px;
}

.project-links {
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

.project-screenshots {
  margin: 1.5rem 0;
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
}

.project-screenshot {
  max-width: 100%;
  border-radius: 8px;
  border: 1px solid var(--main-border-color);
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

hr {
  margin: 2rem 0;
  border: none;
  border-top: 1px solid var(--main-border-color);
}
</style>
