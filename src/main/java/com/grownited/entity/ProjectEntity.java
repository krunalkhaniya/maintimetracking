package com.grownited.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "project")
public class ProjectEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer projectId;

	private String title;
	private String description;

	@ManyToOne
	@JoinColumn(name = "projectStatusId") // FK column
	private ProjectStatusEntity projectStatus;

	private String docURL;
	private Integer estimatedHours;
	private Integer totalUtilizedHours;
	private LocalDate projectStartDate;
	private LocalDate projectCompletionDate;

	public Integer getProjectId() {
		return projectId;
	}

	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ProjectStatusEntity getProjectStatus() {
		return projectStatus;
	}

	public void setProjectStatus(ProjectStatusEntity projectStatus) {
		this.projectStatus = projectStatus;
	}

	public String getDocURL() {
		return docURL;
	}

	public void setDocURL(String docURL) {
		this.docURL = docURL;
	}

	public Integer getEstimatedHours() {
		return estimatedHours;
	}

	public void setEstimatedHours(Integer estimatedHours) {
		this.estimatedHours = estimatedHours;
	}

	public Integer getTotalUtilizedHours() {
		return totalUtilizedHours;
	}

	public void setTotalUtilizedHours(Integer totalUtilizedHours) {
		this.totalUtilizedHours = totalUtilizedHours;
	}

	public LocalDate getProjectStartDate() {
		return projectStartDate;
	}

	public void setProjectStartDate(LocalDate projectStartDate) {
		this.projectStartDate = projectStartDate;
	}

	public LocalDate getProjectCompletionDate() {
		return projectCompletionDate;
	}

	public void setProjectCompletionDate(LocalDate projectCompletionDate) {
		this.projectCompletionDate = projectCompletionDate;
	}
}
