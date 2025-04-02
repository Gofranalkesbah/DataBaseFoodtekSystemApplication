

INSERT INTO SuperAdmin  
    (UserName, [password], Email, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate)  
VALUES  
    ('SuperAdmin1', 'Passw0rd@1', 'superadmin1@gmail.com', 'admin1', 'admin1', 0, GETDATE(), GETDATE()),  
    ('SuperAdmin2', 'Passord@2', 'superadmin2@gmail.com', 'admin2', 'admin2', 0, GETDATE(), GETDATE());  

INSERT INTO [Admin]
    (FirstName, LastName, Email, UserName, PhoneNumber, [Password], 
     ProfileImage, JoinDate, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, SuperAdmin_id)  
VALUES  
    ('Osama', 'Ahmad', 'Osama@gmail.com', 'Osama_Ahmad', '0791234567', 'Password123@',  
     NULL, GETDATE(), 'admin1', 'admin1', 0, GETDATE(), GETDATE(), 1),

    ('Eman', 'Mahmoud', 'Eman@gmail.com', 'Eman_Mahmoud', '0781234567', 'EmanPass123@',  
     NULL, GETDATE(), 'admin2', 'admin2', 0, GETDATE(), GETDATE(), 2);  


	 INSERT INTO [Role]  
    (NameEN, NameAR, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Admin_id)  
VALUES  
    ('Manager', N'مدير', 'admin1', 'admin1', 0, GETDATE(), GETDATE(), 1),  
    ('Driver', N'سائق', 'SuperAdmin2', 'SuperAdmin2', 0, GETDATE(), GETDATE(), 2);  


	INSERT INTO Employee  
    (FirstName, LastName, Email, UserName, PhoneNumber, [Password], ProfileImage,  
     JoinDate, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Admin_id, Role_id)  
VALUES  
    ('Omar', 'Ali', 'Omar@gmail.com', 'Omar_Ali', '0792345678', 'Omar123@', 
	NULL, GETDATE(), 'admin1', 'admin1', 0, GETDATE(), NULL, 1, 1),  

    ('Yousef', 'Mahmoud', 'yousef.mahmoud@zoho.com', 'yousef.m', '0791122334', 'EmpP@ssw0rd',  
     NULL, GETDATE(), 'admin2', 'admin2', 0, GETDATE(), NULL, 2, 1);  


	 INSERT INTO Category  
    (NameEN, NameAR, [Image], CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Admin_id)  
VALUES  
    ('Pizza', N'بيتزا', 'pizza.png', 'admin1', 'admin1', 0, GETDATE(), GETDATE(), 1),  
    ('Seafood', N'مأكولات بحرية', 'seafood.png', 'admin2', 'admin2', 0, GETDATE(), GETDATE(), 2);  


	INSERT INTO Client  
    ([Image], FirstName, LastName, Email, PhoneNumber, JoinDate, [Status], CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate)  
VALUES  
    ('hala.jpg', 'Hala', 'Khaled', 'hala@gmail.com', '0773456789', GETDATE(), 'Active','admin1', 'admin1', 0, GETDATE(), GETDATE()),  

    (NULL, 'Lina', 'Ahmad', 'lina.ahmad@hotmail.com', '0789876543', '2025-04-02 21:13:04.130', 'Not Activated Yet', 'Admin1', 'Admin2', 0, GETDATE(),GETDATE());  


	INSERT INTO Driver  
    (FirstName, LastName, Email, UserName, PhoneNumber, [Password], ProfileImage,  
     JoinDate, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Admin_id)  
VALUES  
    ('Ahmed', 'Ali', 'ahmed.ali@gmail.com', 'ahmedali', '0783456789', 'Password789!', 'driver1.jpg',  
     '2025-02-02', 'admin1', 'admin1', 0, GETDATE(), NULL, 1),  

    ('Hassan', 'Salim', 'hassan.salim@outlook.com', 'hassan.s', '0776543219', 'Dr1v3rP@ss', NULL,  
     '2025-04-02', 'admin2', 'admin2', 0, GETDATE(), NULL, 2);  


	 INSERT INTO Deliveries  
    (DeliveryStatues, PickUpLocation, DropLocation, CreatedBy, UpdatedBy,  
     IsActive, UpdateDate, CreationDate, Client_id, Driver_id)  
VALUES  
    ('Pending', 'Amman, Jordan', 'Irbid, Jordan', 'Client1', 'Admin1',  
     1, GETDATE(), GETDATE(), 1, 1),  

    ('In-Transit', 'Irbid, Jordan', 'Aqaba, Jordan', 'Admin2', 'Admin2',  
     0, GETDATE(), GETDATE(), 2, 2);  


	 INSERT INTO Suggest  
    (Title, Email, [Status], CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Client_id)  
VALUES  
    ('Add more vegetarian options', 'michael.jordan@gmail.com', 'Received', 'admin1', 'admin1',  
     0, GETDATE(), GETDATE(), 1),  

    ('Improve Delivery Time', 'client3@gmail.com', 'Received', 'admin2', 'admin2',  
     0, GETDATE(), GETDATE(), 2);  


	 INSERT INTO [Order]  
    (TotalPrice, Rate, [Status], Actions, CreatedBy, UpdatedBy,  
     IsActive, UpdateDate, CreationDate, Admin_id, Client_id, Driver_id, Deliveries_id)  
VALUES  
    (20.00, 5, 'Active', 'Order placed', 'admin1', 'admin1',  
     0, GETDATE() , GETDATE(), 1, 1, 1, 1),  

    (50.00, 4, 'Canceled', 'Order was canceled by the client', 'admin2', 'admin2',  
     0, GETDATE() , GETDATE() , 2, 2, 2, 2);  

	 INSERT INTO Item  
    (NameEN, NameAR, DescriptionAR, DescriptionEN, Price, [Image], CreatedBy, UpdatedBy,  
     IsActive, UpdateDate, CreationDate, Admin_id, Category_id)  
VALUES  
    ('Pizza', N'بيتزا', N'بيتزا إيطالية لذيذة', 'Delicious Italian pizza', 15.99, 'pizza.jpg',  
     'admin', 'admin', 0, GETDATE() , GETDATE() , 1, 1),  

    ('Grilled Shrimp', N'جمبري مشوي', N'جمبري مشوي متبل بالأعشاب والليمون', 'Grilled shrimp marinated with herbs and lemon', 12.99, 'grilled_shrimp.png',  
     'admin2', 'admin2', 0, GETDATE() , GETDATE() , 2, 2);  

	 INSERT INTO ItemOption  
    (NameEN, NameAR, IsRequired, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Admin_id, Item_id)  
VALUES  
    ('Extra Cheese', N'جبن اضافي', 0, 'admin1', 'admin1', 0, GETDATE(), GETDATE() , 1, 1),  

    ('Spicy Sauce', N'صلصة حارة', 0, 'admin2', 'admin2', 0, GETDATE(), GETDATE() , 2, 2);  


	INSERT INTO [Discount&offers]  
    (TitleEN, TitleAR, DescriptionEN, DescriptionAR, StartDate, EndDate, LimitAmount, Code, 
	[Image], DiscountPercentage, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, 
	Admin_id, Item_id, Order_id)  
VALUES  
    ('Pizza 20% Off', N'خصم 20% على البيتزا', 'Get 20% off on all pizza orders', N'احصل على خصم 20% على جميع طلبات البيتزا',
	'2025-04-03 ', '2025-04-30', NULL, 'PIZZA123', NULL, 20, 'admin1', 'admin1', 0, GETDATE(),GETDATE(), 1, 1, 1),  

    ('Grilled Shrimp Discount', N'خصم على الجمبري المشوي', 'Enjoy 15% off on grilled shrimp dishes.',
	N'استمتع بخصم 15% على أطباق الجمبري المشوي', '2025-04-03', '2025-04-15', 
	NULL, 'GRILL15', NULL, 15, 'admin2', 'admin2', 0, GETDATE(), GETDATE(), 2, 2, 2);


	INSERT INTO Notifications  
    (Title, NotificationType, IsRead, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate,
	Admin_id, Employee_id, Client_id, Driver_id, [Discount&offers_id])  
VALUES  
    ('System Maintenance Alert', 'Issue', 0, 'Admin1', 'Admin1', 1, GETDATE(), GETDATE(), 1, 1, 1, 1, 1),  
    ('Grilled Shrimp Dish Order Received', 'New Order', 0, 'Admin2', 'Admin2', 1, GETDATE(), GETDATE(), 2, 2, 2, 2, 2);


	INSERT INTO Payment  
    (Amount, PaymentType, PaymentStatues, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Client_id, Order_id)  
VALUES  
    (20.00, 'Credit Card', 'Completed', 'admin1', 'admin1', 0, GETDATE(), GETDATE(), 1, 1),  
    (50.00, 'Credit Card', 'Completed', 'admin2', 'admin2', 0, GETDATE(), GETDATE(), 2, 2);


	INSERT INTO Reviews  
    (Rate, Comment, CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Client_id, Order_id, Driver_id, Item_id)  
VALUES  
    (5, 'Delicious pizza, will order again!', 'admin1', 'admin1', 0, GETDATE(), GETDATE(), 1, 1, 1, 1),  
    (5, 'Excellent service and the seafood was amazing!', 'admin2', 'admin2', 0, GETDATE(), GETDATE(), 2, 2, 2, 2);


	INSERT INTO Issue  
    (Title, Email, [Status], CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Client_id, Notifications_id)  
VALUES  
    ('Wrong order received', 'michael.jordan@gmail.com', 'Open', 'admin1', 'admin1', 0, GETDATE(), GETDATE(), 1, 1),  
    ('Food Delivery Delayed', 'client2@hotmail.com', 'Closed', 'admin2', 'admin2', 0, GETDATE(), GETDATE(), 2, 2);


	INSERT INTO OrderHistory  
    (TotalPrice, Rate, [Status], CreatedBy, UpdatedBy, IsActive, UpdateDate, CreationDate, Client_id, Order_id)  
VALUES  
    (20.00, 'Complete', 'Complete', 'admin1', 'admin1', 0, GETDATE(), GETDATE(), 1, 1),  
    (50.00, 'Complete', 'Complete', 'admin2', 'admin2', 0, GETDATE(), GETDATE(), 2, 2);

	INSERT INTO Client_Category (Client_id, Category_id)  
VALUES  
    (1, 1),  
    (2, 2);

	INSERT INTO Client_Item (Client_id, Item_id)  
VALUES  
    (1, 1),  
    (2, 2);

	INSERT INTO Client_Discount (Client_id, [Discount&offers_id])  
VALUES  
    (1, 1),  
    (2, 2);

	INSERT INTO Order_Item (Order_id, Item_id)  
VALUES  
    (1, 1),  
    (2, 2);

	INSERT INTO Category_Discount (Category_id, [Discount&offers_id])  
VALUES  
    (1, 1),  
    (2, 2);



