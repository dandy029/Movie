package com.iii.movie.admin.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.iii.movie.admin.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

	Role findByName(String name);

	@Override
	void delete(Role role);

}
