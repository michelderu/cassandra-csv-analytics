CREATE TABLE IF NOT EXISTS testdb.bookings (
	uid uuid PRIMARY KEY,
	brand text,
	country text,
	month date,
	region text,
	reservations float,
	room_nights float)
	WITH ID = 9d4e3410-3625-11eb-a2a4-39ad851e86eb
	AND additional_write_policy = '99PERCENTILE'
	AND bloom_filter_fp_chance = 0.01
	AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
	AND cdc = false
	AND comment = ''
	AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold': '32', 'min_threshold': '4'}
	AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
	AND crc_check_chance = 1.0
	AND default_time_to_live = 0
	AND extensions = {}
	AND gc_grace_seconds = 864000
	AND max_index_interval = 2048
	AND memtable_flush_period_in_ms = 0
	AND min_index_interval = 128
	AND nodesync = {'enabled': 'true', 'incremental': 'true'}
	AND read_repair = 'BLOCKING'
	AND speculative_retry = '99PERCENTILE';
