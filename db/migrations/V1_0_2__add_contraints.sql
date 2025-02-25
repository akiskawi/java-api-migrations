ALTER TABLE films 
    DROP director,
    DROP director_country,
    DROP star,
    DROP star_dob,
    DROP writer,
    DROP writer_email;

ALTER TABLE
    films
ADD
    COLUMN director_id INTEGER,
ADD
    COLUMN star_id INTEGER,
ADD
    COLUMN writer_id INTEGER;

ALTER TABLE
    films
ADD
    CONSTRAINT fk_director FOREIGN KEY (director_id) REFERENCES directors(id),
ADD
    CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES stars(id),
ADD
    CONSTRAINT fk_writer FOREIGN KEY (writer_id) REFERENCES writers(id);