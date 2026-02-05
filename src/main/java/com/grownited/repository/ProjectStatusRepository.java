package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ProjectStatusEntity;

@Repository
public interface ProjectStatusRepository 
		extends JpaRepository<ProjectStatusEntity, Integer> {

	// optional: find by status name
	ProjectStatusEntity findByStatus(String status);
}
