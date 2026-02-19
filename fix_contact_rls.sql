-- Enable Row Level Security (just in case)
ALTER TABLE contact_messages ENABLE ROW LEVEL SECURITY;

-- Allow anonymous users to insert into contact_messages
CREATE POLICY "Enable insert for anon users" 
ON contact_messages 
FOR INSERT 
TO anon 
WITH CHECK (true);
