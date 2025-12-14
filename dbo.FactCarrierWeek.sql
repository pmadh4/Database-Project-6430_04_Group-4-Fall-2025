USE [PortAuthorityDW]
GO

/****** Object:  Table [dbo].[FactCarrierWeek]    Script Date: 14-12-2025 22:17:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactCarrierWeek](
	[WeekKey] [int] NOT NULL,
	[CarrierKey] [int] NOT NULL,
	[CurrWeekDepartures] [float] NULL,
	[PrevWeekDepartures] [float] NULL,
	[Passengers] [float] NULL,
	[Buses_2019] [float] NULL,
	[Passenger_2019] [float] NULL,
	[Avg_Temp_F] [float] NULL,
	[Min_Temp_F] [float] NULL,
	[Max_Temp_F] [float] NULL,
	[Precip_mm] [float] NULL,
	[Snow_mm] [float] NULL,
	[Avg_RH_Pct] [float] NULL,
	[Avg_Wind_mph] [float] NULL,
	[Peak_Gust_mph] [float] NULL,
	[Avg_Visibility_mi] [float] NULL,
	[Sunny_Hours] [float] NULL,
	[Severe_Weather_Flag] [float] NULL,
	[HDD_Base65] [float] NULL,
	[CDD_Base65] [float] NULL,
	[Storm_Count] [float] NULL,
	[Total_Volume] [float] NULL,
	[Passenger_Cars] [float] NULL,
	[Trucks] [float] NULL,
	[Buses_y] [float] NULL,
	[Avg_Speed_mph] [float] NULL,
	[Incidents] [float] NULL,
	[Peak_Hour_Volume] [float] NULL,
	[LoadDtm] [datetime] NOT NULL,
 CONSTRAINT [PK_FactCarrierWeek] PRIMARY KEY CLUSTERED 
(
	[WeekKey] ASC,
	[CarrierKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactCarrierWeek] ADD  DEFAULT (getdate()) FOR [LoadDtm]
GO

ALTER TABLE [dbo].[FactCarrierWeek]  WITH CHECK ADD  CONSTRAINT [FK_FactCarrierWeek_DimCarrier] FOREIGN KEY([CarrierKey])
REFERENCES [dbo].[DimCarrier] ([CarrierKey])
GO

ALTER TABLE [dbo].[FactCarrierWeek] CHECK CONSTRAINT [FK_FactCarrierWeek_DimCarrier]
GO

ALTER TABLE [dbo].[FactCarrierWeek]  WITH CHECK ADD  CONSTRAINT [FK_FactCarrierWeek_DimWeek] FOREIGN KEY([WeekKey])
REFERENCES [dbo].[DimWeek] ([WeekKey])
GO

ALTER TABLE [dbo].[FactCarrierWeek] CHECK CONSTRAINT [FK_FactCarrierWeek_DimWeek]
GO


