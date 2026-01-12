---
layout: page
icon: fas fa-file-alt
order: 1
title: CV
---

<div class="cv-header">
  <h1>{{ site.data.profile.name }}</h1>
  <p class="cv-title">{{ site.data.profile.title }}</p>
  <div class="cv-contact">
    <a href="mailto:{{ site.data.profile.email }}"><i class="fas fa-envelope"></i> {{ site.data.profile.email }}</a>
    <span><i class="fas fa-phone"></i> {{ site.data.profile.phone }}</span>
    <span><i class="fas fa-map-marker-alt"></i> {{ site.data.profile.location }}</span>
  </div>
</div>
<div class="cv-actions">
  <a href="{{ site.baseurl }}/cv/download_pdf/CV_AI_Data_Engineer.pdf" class="btn-download" download>
    <i class="fas fa-download"></i> Download CV PDF
  </a>
</div>

## Summary

{{ site.data.profile.summary }}

## Skills

<div class="tags">
{% for skill in site.data.skills.flat_list %}
<code>{{ skill }}</code>
{% endfor %}
</div>

## Certifications

<div class="tags">
{% for cert in site.data.certifications %}
<span class="cert-tag"><i class="fas fa-certificate"></i> {{ cert.name }}</span>
{% endfor %}
</div>

## Experience

{% for job in site.data.experience %}
<div class="cv-job">
  <div class="cv-job-header">
    <div>
      <strong>{{ job.title }}</strong>
      <span class="company">{{ job.company }}, {{ job.location }}</span>
    </div>
    <span class="period">{{ job.period }}</span>
  </div>

  {% if job.projects %}
  {% for project in job.projects %}
  <div class="cv-project">
    <em>{{ project.name }}</em>
    <ul>
    {% for highlight in project.highlights %}
      <li>{{ highlight }}</li>
    {% endfor %}
    </ul>
  </div>
  {% endfor %}
  {% else %}
  <ul>
  {% for highlight in job.highlights %}
    <li>{{ highlight }}</li>
  {% endfor %}
  </ul>
  {% endif %}
</div>
{% endfor %}

## Education

{% for edu in site.data.education %}
<div class="cv-edu">
  <div class="cv-edu-header">
    <div>
      <strong>{{ edu.degree }}, {{ edu.field }}</strong>
      <span class="institution">{{ edu.institution }}</span>
    </div>
    <span class="period">{{ edu.period }}</span>
  </div>
</div>
{% endfor %}

## Publications

{% for pub in site.data.publications %}
- **{{ pub.title }}**, *{{ pub.journal }}* ({{ pub.year }})
{% endfor %}

<style>
.cv-header {
  text-align: center;
  padding-bottom: 1.5rem;
  border-bottom: 1px solid var(--main-border-color);
  margin-bottom: 1.5rem;
}

.cv-header h1 {
  font-size: 1.75rem;
  margin-bottom: 0.25rem;
}

.cv-title {
  font-size: 1rem;
  color: var(--accent);
  margin-bottom: 0.75rem;
  font-weight: 500;
}

.cv-contact {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 1.25rem;
  font-size: 0.85rem;
  color: var(--text-muted-color);
}

.cv-contact a {
  color: var(--text-muted-color);
  text-decoration: none;
}

.cv-contact a:hover {
  color: var(--accent);
}

.cv-contact i {
  margin-right: 0.25rem;
  color: var(--accent);
}

.cv-actions {
  text-align: center;
  margin-bottom: 2rem;
}

.btn-download {
  display: inline-flex;
  align-items: center;
  gap: 0.4rem;
  padding: 0.5rem 1rem;
  background: var(--accent);
  color: white;
  border-radius: 5px;
  text-decoration: none;
  font-size: 0.85rem;
  font-weight: 500;
}

.btn-download:hover {
  opacity: 0.9;
  text-decoration: none;
  color: white;
}

.tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 1rem;
}

.tags code {
  font-family: 'SF Mono', 'Fira Code', 'Consolas', monospace;
  font-size: 0.75rem;
  padding: 0.2rem 0.5rem;
  background: var(--accent-bg);
  border: 1px solid var(--main-border-color);
  border-radius: 4px;
}

.cert-tag {
  font-size: 0.8rem;
  padding: 0.3rem 0.6rem;
  background: var(--card-bg);
  border: 1px solid var(--main-border-color);
  border-radius: 4px;
}

.cert-tag i {
  color: var(--accent);
  margin-right: 0.3rem;
}

.cv-job {
  margin-bottom: 1.5rem;
  padding: 1rem;
  background: var(--card-bg);
  border: 1px solid var(--main-border-color);
  border-radius: 6px;
  border-left: 3px solid var(--accent-bg);
}

.cv-job-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 0.5rem;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.cv-job-header strong {
  display: block;
  font-size: 0.95rem;
  margin-bottom: 0.15rem;
}

.cv-job-header .company {
  font-size: 0.85rem;
  color: var(--text-muted-color);
}

.cv-edu {
  margin-bottom: 1rem;
  padding: 1rem;
  background: var(--card-bg);
  border: 1px solid var(--main-border-color);
  border-radius: 6px;
}

.cv-edu-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.cv-edu-header strong {
  display: block;
  font-size: 0.95rem;
  margin-bottom: 0.15rem;
}

.cv-edu-header .institution {
  font-size: 0.85rem;
  color: var(--text-muted-color);
}

.period {
  font-size: 0.8rem;
  color: var(--text-muted-color);
  white-space: nowrap;
}

.cv-project {
  margin-top: 0.75rem;
  padding-left: 0.5rem;
}

.cv-project em {
  font-size: 0.9rem;
  color: var(--accent);
}

.cv-job ul, .cv-project ul {
  margin-top: 0.5rem;
  margin-bottom: 0;
  padding-left: 1.2rem;
}

.cv-job li, .cv-project li {
  font-size: 0.85rem;
  margin-bottom: 0.3rem;
  line-height: 1.5;
}

/* Print styles */
@media print {
  .cv-actions, .topnav, .site-footer {
    display: none !important;
  }

  body {
    padding-top: 0 !important;
    font-size: 10pt;
  }

  .cv-header {
    border-bottom: 1px solid #000;
  }

  .cv-job, .cv-edu {
    border: none;
    border-left: 2px solid #000;
    background: none;
  }
}
</style>
