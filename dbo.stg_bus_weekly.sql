USE [PortAuthorityDW]
GO

/****** Object:  Table [dbo].[stg_bus_weekly]    Script Date: 14-12-2025 22:18:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_bus_weekly](
	[Sheet] [nvarchar](50) NOT NULL,
	[Carrier] [nvarchar](50) NOT NULL,
	[CurrWeekDepartures] [smallint] NULL,
	[PrevWeekDepartures] [smallint] NULL,
	[DepartureDiff] [smallint] NULL,
	[DepartureDiffPct] [float] NULL,
	[Buses_x] [smallint] NULL,
	[Passengers] [smallint] NULL,
	[Buses_2019] [smallint] NULL,
	[Passenger_2019] [int] NULL,
	[Load_Factor] [float] NULL,
	[Avg_Temp_F] [float] NULL,
	[Min_Temp_F] [float] NULL,
	[Max_Temp_F] [float] NULL,
	[Precip_mm] [float] NULL,
	[Snow_mm] [float] NULL,
	[Avg_RH_Pct] [tinyint] NULL,
	[Avg_Wind_mph] [float] NULL,
	[Peak_Gust_mph] [float] NULL,
	[Avg_Visibility_mi] [float] NULL,
	[Sunny_Hours] [float] NULL,
	[Severe_Weather_Flag] [tinyint] NULL,
	[HDD_Base65] [float] NULL,
	[CDD_Base65] [tinyint] NULL,
	[Storm_Count] [bit] NULL,
	[Holiday_Week_x] [tinyint] NULL,
	[Total_Volume] [int] NULL,
	[Passenger_Cars] [int] NULL,
	[Trucks] [smallint] NULL,
	[Buses_y] [smallint] NULL,
	[Avg_Speed_mph] [float] NULL,
	[Incidents] [tinyint] NULL,
	[Weather_Impact_Index] [float] NULL,
	[Peak_Hour_Volume] [smallint] NULL,
	[Pct_Heavy_Vehicles] [float] NULL,
	[Pct_Buses] [float] NULL,
	[Holiday_Week_y] [tinyint] NULL,
	[WeekStartDate] [date] NOT NULL,
	[WeekStartDate_dt] [date] NULL
) ON [PRIMARY]
GO


