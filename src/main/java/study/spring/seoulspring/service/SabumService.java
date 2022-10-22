package study.spring.seoulspring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Council;
import study.spring.seoulspring.model.sabum;

@Service
public interface SabumService {

	public abstract List<sabum> SelectSabum(sabum input) throws Exception;
}
