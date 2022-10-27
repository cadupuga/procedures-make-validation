 
CREATE PROCEDURE retorna_rules_php 
 @tabela VARCHAR(MAX)     
AS     
BEGIN     
 select '''' + name + ''' => ''' + CASE WHEN is_nullable = 0 THEN 'required' ELSE '' END + ''','   
 from sys.columns     
 where object_id = OBJECT_ID(@tabela)     
END
 
CREATE PROCEDURE retorna_transformer_php   
 @tabela VARCHAR(MAX)   
AS   
BEGIN   
 select '''' + name + ''' => $model->'  + name + ','   
 from sys.columns   
 where object_id = OBJECT_ID(@tabela)   
END
