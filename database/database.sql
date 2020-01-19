    Create table tblEmployee(      
        id int IDENTITY(1,1) NOT NULL,      
        parent varchar(3) NOT NULL,      
        text varchar(200) NOT NULL  
    )
	
	    Create procedure spGetAllEmployees      
    as      
    Begin      
        select *      
        from tblEmployee   
        order by id      
    End
	
	
INSERT INTO `tblEmployee` ( `parent`, `text`) VALUES
( '#', 'S01, Sektor 1'),
( '#', 'S02, Sektor 2'),
( '1', 'S01-O01, Odjel 1 sektora 1, S01'),
( '1', 'S01-O02, Odjel 2 sektora 1, S01'),
( '3', 'S01-O01-T01, Team 1 odjela 1 sektora 1, S01-O01'),
( '3', 'S01-O01-T02, Team 2 odjela 1 sektora 1, S01-O01'),
( '2', 'S01-O01, Odjel 1 sektora 1, S01');