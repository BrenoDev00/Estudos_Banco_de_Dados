BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS public.task (
	task_id UUID DEFAULT gen_random_uuid(),
	task VARCHAR(300) NOT NULL,
	is_public BOOLEAN NOT NULL,
	created_at TIMESTAMP NOT NULL,
	user_email TEXT NOT NULL,
	PRIMARY KEY(task_id)
);

CREATE TABLE IF NOT EXISTS public.comment (
	comment_id UUID DEFAULT gen_random_uuid(),
	comment VARCHAR(300) NOT NULL,
	task_id UUID NOT NULL,
	PRIMARY KEY(comment_id),
	FOREIGN KEY(task_id) REFERENCES task(task_id)
);

COMMIT;

SELECT * FROM public.comment;