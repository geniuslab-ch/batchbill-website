-- Drop the existing policy to avoid conflict
DROP POLICY IF EXISTS "Enable insert for anon users" ON contact_messages;

-- Create the policy again with the correct permissions
CREATE POLICY "Enable insert for anon users" 
ON contact_messages 
FOR INSERT 
TO anon 
WITH CHECK (true);

-- Ensure the anon role has permission to insert (sometimes table-level grants are needed)
GRANT INSERT ON contact_messages TO anon;
