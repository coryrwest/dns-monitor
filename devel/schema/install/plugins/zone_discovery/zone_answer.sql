CREATE TABLE zone_answer
(
  zone_id bigint NOT NULL,
  answer_id bigint NOT NULL,
  CONSTRAINT zone_answer_pki_ids PRIMARY KEY (zone_id, answer_id),
  CONSTRAINT zone_answer_fki_answer FOREIGN KEY (answer_id)
      REFERENCES packet_record_answer (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT zone_answer_fki_zone FOREIGN KEY (zone_id)
      REFERENCES "zone" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
