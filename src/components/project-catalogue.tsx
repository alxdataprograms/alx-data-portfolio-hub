"use client";

import Link from "next/link";
import { useMemo, useState } from "react";
import type { Project } from "@/data/projects";
import { ArrowUpRightIcon, ClockIcon, SearchIcon } from "@/components/icons";

type ProjectCatalogueProps = {
  projects: Project[];
};

const courses = ["All courses", "DA-2", "DA-3", "DA-4", "Capstone"];
const difficulties = ["All levels", "Beginner", "Intermediate", "Advanced"];

export function ProjectCatalogue({ projects }: ProjectCatalogueProps) {
  const [query, setQuery] = useState("");
  const [course, setCourse] = useState(courses[0]);
  const [difficulty, setDifficulty] = useState(difficulties[0]);

  const filteredProjects = useMemo(() => {
    const normalizedQuery = query.trim().toLowerCase();

    return projects.filter((project) => {
      const searchable = [
        project.title,
        project.summary,
        project.domain,
        project.course,
        project.courseName,
        ...project.skills,
      ]
        .join(" ")
        .toLowerCase();

      return (
        (!normalizedQuery || searchable.includes(normalizedQuery)) &&
        (course === courses[0] || project.course === course) &&
        (difficulty === difficulties[0] || project.difficulty === difficulty)
      );
    });
  }, [course, difficulty, projects, query]);

  return (
    <div className="catalogue">
      <div className="filters" aria-label="Project filters">
        <label className="search-field">
          <span className="sr-only">Search projects</span>
          <SearchIcon className="search-field__icon" />
          <input
            onChange={(event) => setQuery(event.target.value)}
            placeholder="Search by title, industry, or skill"
            type="search"
            value={query}
          />
        </label>

        <label className="select-field">
          <span>Course</span>
          <select onChange={(event) => setCourse(event.target.value)} value={course}>
            {courses.map((option) => (
              <option key={option}>{option}</option>
            ))}
          </select>
        </label>

        <label className="select-field">
          <span>Difficulty</span>
          <select onChange={(event) => setDifficulty(event.target.value)} value={difficulty}>
            {difficulties.map((option) => (
              <option key={option}>{option}</option>
            ))}
          </select>
        </label>
      </div>

      <div className="catalogue__summary" aria-live="polite">
        <span>{filteredProjects.length} project{filteredProjects.length === 1 ? "" : "s"}</span>
        <span className="catalogue__summary-rule" aria-hidden="true" />
        <span>Real datasets, practical outcomes</span>
      </div>

      {filteredProjects.length > 0 ? (
        <ol className="project-list">
          {filteredProjects.map((project, index) => (
            <li key={project.slug}>
              <Link className="project-row" href={`/projects/${project.slug}`}>
                <span className="project-row__number" aria-hidden="true">
                  {String(index + 1).padStart(2, "0")}
                </span>

                <span className="project-row__body">
                  <span className="project-row__eyebrow">
                    <span>{project.course}</span>
                    <span aria-hidden="true">·</span>
                    <span>{project.courseName}</span>
                    <span aria-hidden="true">·</span>
                    <span>{project.domain}</span>
                  </span>
                  <strong>{project.title}</strong>
                  <span className="project-row__summary">{project.summary}</span>
                  <span className="project-row__tags">
                    {project.skills.slice(0, 4).map((skill) => (
                      <span key={skill}>{skill}</span>
                    ))}
                  </span>
                </span>

                <span className="project-row__aside">
                  <span className={`difficulty difficulty--${project.difficulty.toLowerCase()}`}>
                    {project.difficulty}
                  </span>
                  <span className="project-row__time">
                    <ClockIcon />
                    {project.estimatedTime}
                  </span>
                  <span className="project-row__open">
                    Open brief
                    <ArrowUpRightIcon />
                  </span>
                </span>
              </Link>
            </li>
          ))}
        </ol>
      ) : (
        <div className="empty-state">
          <strong>No projects match those filters.</strong>
          <p>Try a broader search or reset one of the filters.</p>
          <button
            onClick={() => {
              setQuery("");
              setCourse(courses[0]);
              setDifficulty(difficulties[0]);
            }}
            type="button"
          >
            Clear filters
          </button>
        </div>
      )}
    </div>
  );
}
