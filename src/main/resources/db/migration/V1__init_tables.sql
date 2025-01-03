-- Create basic structure.
create table if not exists users (
    id uuid DEFAULT gen_random_uuid(),
    name varchar not null,
    username varchar not null,
    password varchar not  null,
    PRIMARY KEY (id)
);

-- Insert demo data.
insert into users (name, username, password) values ('John Smith', 'jsmith', crypt('user1_password', gen_salt('md5')));
insert into users (name, username, password) values ('Ted Nobody', 'tnobody', crypt('user2_password', gen_salt('md5')));
