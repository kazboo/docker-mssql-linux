USE [TEST_DB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[T_ORDER](
    [ORDER_NUMBER] [int] IDENTITY(1,1) NOT NULL,
    [JOB_NAME] [nvarchar](50) NOT NULL,
    [ORDER_TYPE] [tinyint] NOT NULL,
    [STATUS] [tinyint] NOT NULL,
    [MACHINE] [tinyint] NOT NULL,
    [PROGRESS] [tinyint] NOT NULL,
    [DOC_ID] [varchar](64) NOT NULL,
    [DOC_NAME] [nvarchar](64) NULL,
    [DOC_DEP] [varchar](2) NULL,
    [INOUT] [tinyint] NOT NULL,
    [WARD] [varchar](3) NULL,
    [DEPCODE] [varchar](2) NULL,
    [USE_TYPE] [tinyint] NOT NULL,
    [MEDIA_TYPE] [tinyint] NOT NULL,
    [NUMBER_SHEETS] [smallint] NOT NULL,
    [COPIES] [smallint] NOT NULL,
    [PHS] [varchar](13) NULL,
    [REQUESTED] [datetime2](7) NOT NULL,
    [COMPLETED] [datetime2](7) NULL,
    [COMPLETE_RECIEVE_COUNT] [tinyint] NOT NULL,
    [RECEIPTED] [datetime2](7) NULL,
    [EXPRESS_FLG] [bit] NOT NULL,
    [RECEIPT_FLG] [bit] NOT NULL,
    [DESTRUCTION_FLG] [bit] NOT NULL,
    [COPY_FLG] [bit] NOT NULL,
    [CMOVE_FLG] [bit] NOT NULL,
    [CMOVE_COMPLETED] [datetime2](7) NULL,
    [COMMENT] [nvarchar](2000) NULL,
    [ERROR] [ntext] NULL,
    [ACCOUNTING] [tinyint] NOT NULL,
    [ACCOUNTING_ORDNO] [int] NOT NULL,
    [ACCOUNTING_ERROR] [nvarchar](256) NULL,
    [CREATED] [datetime2](7) NOT NULL,
    [UPDATED] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_T_ORDER] PRIMARY KEY CLUSTERED
(
    [ORDER_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_ORDER_TYPE]  DEFAULT ((0)) FOR [ORDER_TYPE]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_STATUS]  DEFAULT ((0)) FOR [STATUS]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_MACHINE]  DEFAULT ((0)) FOR [MACHINE]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_PROGRESS]  DEFAULT ((0)) FOR [PROGRESS]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_INOUT]  DEFAULT ((0)) FOR [INOUT]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_USE_TYPE]  DEFAULT ((0)) FOR [USE_TYPE]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_MEDIA_TYPE]  DEFAULT ((3)) FOR [MEDIA_TYPE]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_NUMBER_SHEETS]  DEFAULT ((1)) FOR [NUMBER_SHEETS]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_COPIES]  DEFAULT ((1)) FOR [COPIES]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_COMPLETE_RECIEVE_COUNT]  DEFAULT ((0)) FOR [COMPLETE_RECIEVE_COUNT]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_EXPRESS_FLG]  DEFAULT ((0)) FOR [EXPRESS_FLG]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_RECEIPT_FLG]  DEFAULT ((0)) FOR [RECEIPT_FLG]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_DESTRUCTION_FLG]  DEFAULT ((0)) FOR [DESTRUCTION_FLG]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_COPY_FLG]  DEFAULT ((0)) FOR [COPY_FLG]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_CMOVE_FLG]  DEFAULT ((0)) FOR [CMOVE_FLG]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_ACCOUNTING]  DEFAULT ((0)) FOR [ACCOUNTING]
GO

ALTER TABLE [dbo].[T_ORDER] ADD  CONSTRAINT [DF_T_ORDER_ACCOUNTING_ORDNO]  DEFAULT ((0)) FOR [ACCOUNTING_ORDNO]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'オーダー番号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'ORDER_NUMBER'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'JOB名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'JOB_NAME'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'オーダー種別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'ORDER_TYPE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ステータス' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'STATUS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'マシン' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'MACHINE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'進捗率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'PROGRESS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'依頼医ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'DOC_ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'依頼医名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'DOC_NAME'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'依頼医部門' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'DOC_DEP'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'患者入外' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'INOUT'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'患者病棟コード' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'WARD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'患者所属診療科コード' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'DEPCODE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用途' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'USE_TYPE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'メディア種別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'MEDIA_TYPE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'枚数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'NUMBER_SHEETS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'COPIES'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PHS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'PHS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'依頼日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'REQUESTED'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完了日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'COMPLETED'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完了通知受信回数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'COMPLETE_RECIEVE_COUNT'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受取日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'RECEIPTED'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特急フラグ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'EXPRESS_FLG'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受取フラグ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'RECEIPT_FLG'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'破棄フラグ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'DESTRUCTION_FLG'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'コピーフラグ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'COPY_FLG'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'C-MOVEフラグ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'CMOVE_FLG'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'C-MOVE完了日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'CMOVE_COMPLETED'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'コメント' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'COMMENT'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'エラー' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'ERROR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会計処理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'ACCOUNTING'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会計依頼文書オーダー番号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'ACCOUNTING_ORDNO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会計処理エラー' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'ACCOUNTING_ERROR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作成日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'CREATED'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日時' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER', @level2type=N'COLUMN',@level2name=N'UPDATED'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'オーダー情報' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ORDER'
GO

