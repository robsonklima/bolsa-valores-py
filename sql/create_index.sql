ALTER TABLE `time_series` ADD UNIQUE `unique_index_01`(time_serie, symbol);

ALTER TABLE time_series  DROP INDEX unique_index_01;