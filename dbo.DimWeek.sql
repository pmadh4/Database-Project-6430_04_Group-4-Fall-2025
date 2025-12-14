USE [PortAuthorityDW]
GO

/****** Object:  Table [dbo].[DimWeek]    Script Date: 14-12-2025 22:17:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimWeek](
	[WeekKey] [int] NOT NULL,
	[WeekStartDate] [date] NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[WeekOfYear] [int] NOT NULL,
	[HolidayWeek] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[WeekKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


