-- 참고용: 홈페이지에 처음 접속하면 아래 표가 자동으로 만들어져요.
-- 직접 만들고 싶을 때만 D1 콘솔에서 실행하세요.
CREATE TABLE IF NOT EXISTS content (id TEXT PRIMARY KEY, data TEXT NOT NULL, updated_at INTEGER);
CREATE TABLE IF NOT EXISTS applications (id TEXT PRIMARY KEY, name TEXT NOT NULL, phone_norm TEXT NOT NULL, pin_hash TEXT NOT NULL, status TEXT NOT NULL DEFAULT '대기', data TEXT NOT NULL, admin_note TEXT DEFAULT '', agreed_at INTEGER, submitted_at INTEGER, updated_at INTEGER, decided_at INTEGER);
CREATE INDEX IF NOT EXISTS idx_app_lookup ON applications(phone_norm, name);
CREATE TABLE IF NOT EXISTS members (id TEXT PRIMARY KEY, data TEXT NOT NULL, source TEXT, joined_at INTEGER, updated_at INTEGER);
CREATE TABLE IF NOT EXISTS attempts (kind TEXT NOT NULL, key TEXT NOT NULL, ts INTEGER NOT NULL);
CREATE INDEX IF NOT EXISTS idx_attempts ON attempts(kind, key, ts);
