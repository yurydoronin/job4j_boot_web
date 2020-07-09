package ru.job4j.bootweb.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.job4j.bootweb.model.Accident;
import ru.job4j.bootweb.repository.AccidentRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

/**
 * Class AccidentServiceImpl.
 *
 * @author Yury Doronin (doronin.ltd@gmail.com)
 * @version 1.0
 * @since 19.04.2020
 */
@Service
@RequiredArgsConstructor
public class AccidentServiceImpl implements AccidentService {

    private final AccidentRepository repo;

    @Override
    public void save(Accident accident) {
        this.repo.save(accident);
    }

    @Override
    public List<Accident> getAll() {
        List<Accident> accidents = new ArrayList<>();
        this.repo.findAll().forEach(accidents::add);
        return accidents;
    }

    @Override
    public Accident findById(int id) {
        return this.repo.findById(id).orElseThrow(
                () -> new NoSuchElementException(String.format(
                        "Аксидент %s не найден. Проверьте данные запроса", id)));
    }

    @Override
    public void delete(Accident accident) {
        this.repo.delete(accident);
    }
}
