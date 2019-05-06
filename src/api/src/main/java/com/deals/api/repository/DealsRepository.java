package com.deals.api.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.deals.api.model.Deals;
import com.deals.api.model.DealsRecord;

@Repository
public interface DealsRepository extends JpaRepository<Deals, Long> {
	@Query(value = "SELECT * FROM deals d WHERE d.deals_exp >= now()", nativeQuery = true)
    List<Deals> findAvailableDeals();
}
