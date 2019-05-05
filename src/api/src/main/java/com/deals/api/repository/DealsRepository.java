package com.deals.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.deals.api.model.Deals;

@Repository
public interface DealsRepository extends JpaRepository<Deals, Long> {

	
}
