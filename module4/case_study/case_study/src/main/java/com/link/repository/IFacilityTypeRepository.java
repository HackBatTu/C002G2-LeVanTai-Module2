package com.link.repository;

import com.link.model.service.FacilityType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Controller;

@Controller
public interface IFacilityTypeRepository extends JpaRepository<FacilityType, Integer> {
}
