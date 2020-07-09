package ru.job4j.bootweb.service;

import ru.job4j.bootweb.model.Accident;

import java.util.List;

/**
 * Class AccidentService.
 *
 * @author Yury Doronin (doronin.ltd@gmail.com)
 * @version 1.0
 * @since 01.07.2020
 */
public interface AccidentService {

    void save(Accident accident);
    List<Accident> getAll();
    Accident findById(int id);
    void delete(Accident accident);
}
