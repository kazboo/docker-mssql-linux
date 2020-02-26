USE [TEST_DB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[T_ORDER_DETAIL](
    [ORDER_NUMBER] [int] NOT NULL,
    [STUDY_INSTANCE_UID] [varchar](64) NOT NULL,
    [PATIENT_ID] [varchar](64) NOT NULL,
    [PATIENT_NAME_G1] [nvarchar](64) NULL,
    [PATIENT_NAME_G2] [nvarchar](64) NULL,
    [PATIENT_NAME_G3] [nvarchar](64) NULL,
    [SEX] [varchar](16) NULL,
    [BIRTHDAY] [char](8) NULL,
    [STUDY_DATE] [char](8) NOT NULL,
    [STUDY_TIME] [char](16) NULL,
    [MODALITY] [varchar](16) NOT NULL,
    [IMAGE_NUMBER] [int] NULL,
    [REQUESTING_SERVICE] [nvarchar](64) NULL,
    [BODY_PART] [nvarchar](64) NOT NULL,
    [ACCESSION_NUMBER] [varchar](16) NULL,
    [CREATED] [datetime2](7) NOT NULL,
    [UPDATED] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_T_ORDER_DETAIL] PRIMARY KEY CLUSTERED
(
    [ORDER_NUMBER] ASC,
    [STUDY_INSTANCE_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[T_ORDER_DETAIL] ADD  CONSTRAINT [DF_T_ORDER_DETAIL_IMAGE_NUMBER]  DEFAULT ((0)) FOR [IMAGE_NUMBER]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'オーダー番号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'ORDER_NUMBER'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudyInstanceUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'STUDY_INSTANCE_UID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'患者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'PATIENT_ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'患者名グループ１' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'PATIENT_NAME_G1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'患者名グループ２' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'PATIENT_NAME_G2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'患者名グループ３' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'PATIENT_NAME_G3'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'SEX'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生年月日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'BIRTHDAY'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'検査日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'STUDY_DATE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'モダリティ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'MODALITY'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'画像枚数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'IMAGE_NUMBER'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'依頼科' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'REQUESTING_SERVICE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'撮影部位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'BODY_PART'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AccessionNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'ACCESSION_NUMBER'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作成日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'CREATED'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL', @level2type=N'COLUMN',@level2name=N'UPDATED'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'オーダー明細' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER_DETAIL'
GO

