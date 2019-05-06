package com.deals.api.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.deals.api.model.DealsRecord;

@Repository
public interface DealsRecordRepository extends JpaRepository<DealsRecord, Long> {

}
