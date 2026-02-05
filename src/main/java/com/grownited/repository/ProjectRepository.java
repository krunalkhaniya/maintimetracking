package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ProjectEntity;

@Repository
public interface ProjectRepository 
		extends JpaRepository<ProjectEntity, Integer> {

	// optional examples (useful later)
	// List<ProjectEntity> findByTitleContaining(String title);
	// List<ProjectEntity> findByProjectStatus_Status(String status);
}
