
/****** Object:  Table [dbo].[Label_Names]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Label_Names](
	[Label] [int] NULL,
	[LabelNames] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Metrics]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metrics](
	[id] [varchar](30) NOT NULL,
	[avg_accuracy_micro] [float] NULL,
	[avg_accuracy_macro] [float] NULL,
 CONSTRAINT [unique_id2] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[id] [varchar](200) NOT NULL,
	[value] [varbinary](max) NULL,
 CONSTRAINT [unique_id] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_Test]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_Test](
	[Label] [int] NULL,
	[Subject] [nvarchar](436) NULL,
	[Text] [nvarchar](max) NULL,
	[Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_To_Score]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_To_Score](
	[Label] [int] NULL,
	[Subject] [varchar](max) NULL,
	[Text] [varchar](max) NULL,
	[Id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_Train]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_Train](
	[Label] [int] NULL,
	[Subject] [nvarchar](480) NULL,
	[Text] [nvarchar](max) NULL,
	[Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predictions]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predictions](
	[LabelNames] [nvarchar](255) NULL,
	[Label] [nvarchar](255) NULL,
	[Id] [int] NULL,
	[PredictedLabel] [nvarchar](255) NULL,
	[Score.0] [float] NULL,
	[Score.15] [float] NULL,
	[Score.9] [float] NULL,
	[Score.3] [float] NULL,
	[Score.12] [float] NULL,
	[Score.6] [float] NULL,
	[Score.7] [float] NULL,
	[Score.1] [float] NULL,
	[Score.18] [float] NULL,
	[Score.10] [float] NULL,
	[Score.4] [float] NULL,
	[Score.19] [float] NULL,
	[Score.13] [float] NULL,
	[Score.5] [float] NULL,
	[Score.16] [float] NULL,
	[Score.2] [float] NULL,
	[Score.17] [float] NULL,
	[Score.11] [float] NULL,
	[Score.14] [float] NULL,
	[Score.8] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predictions_Intermediate]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predictions_Intermediate](
	[Label] [nvarchar](255) NULL,
	[Id] [int] NULL,
	[PredictedLabel] [nvarchar](255) NULL,
	[Score.0] [float] NULL,
	[Score.15] [float] NULL,
	[Score.9] [float] NULL,
	[Score.3] [float] NULL,
	[Score.12] [float] NULL,
	[Score.6] [float] NULL,
	[Score.7] [float] NULL,
	[Score.1] [float] NULL,
	[Score.18] [float] NULL,
	[Score.10] [float] NULL,
	[Score.4] [float] NULL,
	[Score.19] [float] NULL,
	[Score.13] [float] NULL,
	[Score.5] [float] NULL,
	[Score.16] [float] NULL,
	[Score.2] [float] NULL,
	[Score.17] [float] NULL,
	[Score.11] [float] NULL,
	[Score.14] [float] NULL,
	[Score.8] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predictions_New]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predictions_New](
	[LabelNames] [varchar](30) NULL,
	[Label] [nvarchar](255) NULL,
	[Id] [int] NULL,
	[PredictedLabel] [nvarchar](255) NULL,
	[Score.0] [float] NULL,
	[Score.9] [float] NULL,
	[Score.15] [float] NULL,
	[Score.3] [float] NULL,
	[Score.12] [float] NULL,
	[Score.6] [float] NULL,
	[Score.7] [float] NULL,
	[Score.1] [float] NULL,
	[Score.18] [float] NULL,
	[Score.10] [float] NULL,
	[Score.4] [float] NULL,
	[Score.19] [float] NULL,
	[Score.13] [float] NULL,
	[Score.5] [float] NULL,
	[Score.16] [float] NULL,
	[Score.2] [float] NULL,
	[Score.17] [float] NULL,
	[Score.11] [float] NULL,
	[Score.14] [float] NULL,
	[Score.8] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[evaluate]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[evaluate] @predictions_table varchar(max), @model_key varchar(max)

AS 
BEGIN

	-- Get the server and current database names.
	DECLARE @server_name varchar(max) = (SELECT CAST(SERVERPROPERTY('ServerName') as VARCHAR(100)));
	DECLARE @database_name varchar(max) = db_name();

	-- Import the Predictions Table as an input to the Python code.
	DECLARE @inquery nvarchar(max) = N' SELECT * FROM ' + @predictions_table


	TRUNCATE TABLE Metrics

	INSERT INTO Metrics 
	EXECUTE sp_execute_external_script @language = N'Python',
     								   @script = N' 

##########################################################################################################################################
##	Import Modules.
##########################################################################################################################################
from pandas import DataFrame
from collections import OrderedDict 
from sklearn import metrics
from sklearn.metrics import confusion_matrix

##########################################################################################################################################
## Model evaluation metrics.
##########################################################################################################################################
def evaluate_model(observed, predicted, model):
	## Confusion matrix: 
	Conf_Matrix = confusion_matrix(y_true = observed, y_pred = predicted)

	## Micro Average accuracy: 
	micro = sum(Conf_Matrix[i][i] for i in range(Conf_Matrix.shape[0]))/len(observed)

	## Macro Average accuracy: 
	macro = sum(Conf_Matrix[i][i]/(sum(Conf_Matrix[i][j] for j in range(Conf_Matrix.shape[0]))) for i in range(Conf_Matrix.shape[0]))/Conf_Matrix.shape[0]

	metrics = OrderedDict([ ("model_name", [model]),
				         ("avg_accuracy_micro", [micro]),
                         ("avg_accuracy_macro", [macro]) ])
	print(metrics)
	return(metrics)

##########################################################################################################################################
## Evaluation 
##########################################################################################################################################
evaluation = evaluate_model(observed = InputDataSet["Label"], predicted = InputDataSet["PredictedLabel"], model = model_key)
OutputDataSet = DataFrame.from_dict(evaluation)
'
, @input_data_1 = @inquery
, @params = N'@predictions_table varchar(max), @model_key varchar(max), @server_name varchar(max), @database_name varchar(max)'	
, @model_key = @model_key
, @predictions_table = @predictions_table 
, @server_name = @server_name
, @database_name = @database_name
;
END
GO
/****** Object:  StoredProcedure [dbo].[Inital_Run_Once_Py]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE PROC [dbo].[Inital_Run_Once_Py]

	AS 
	

	Declare 
		@Start DateTime = GETDATE() ,
		@End DateTime 

	
	/* Step 1: Feature Engineering and Training */
	exec [dbo].[train_model] @model_key = 'LR';

	Print 'Training Done'

	/* Step 2: Scoring on the testing set */ 
	exec [dbo].[score] @input = 'News_Test', @output = 'Predictions', @model_key = 'LR'

	Print 'Scoring Done'

	/* Step 3: Evaluating the model */
	exec [dbo].[evaluate] @predictions_table = 'Predictions', @model_key = 'LR'

	Print 'Evaluation Done'


	/* Score an additonal data set */
	exec [dbo].[score] @input = 'News_To_Score', @output = 'Predictions_New', @model_key = 'LR'

	Print 'Additional Data Set Scored'

 SELECT	DATEDIFF(MINUTE,@Start, @End) as ProcessingTime 
GO
/****** Object:  StoredProcedure [dbo].[score]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[score] @input varchar(max), @output varchar(max), @model_key varchar(max)

AS 
BEGIN

	-- Get the server and current database names.
	DECLARE @server_name varchar(max) = (SELECT CAST(SERVERPROPERTY('ServerName') as VARCHAR(100)));
	DECLARE @database_name varchar(max) = db_name();

	-- Compute the predictions. 
	EXECUTE sp_execute_external_script @language = N'Python',
     					               @script = N' 

##########################################################################################################################################
##	Import Modules.
##########################################################################################################################################
from revoscalepy import rx_set_compute_context, RxSqlServerData, RxOdbcData, rx_read_object, RxInSqlServer, rx_import
from microsoftml import rx_predict 

##########################################################################################################################################
##	Define the connection string.
##########################################################################################################################################
connection_string = "Driver=SQL Server;Server=" + server_name + ";Database=" + database_name + ";Trusted_Connection=true;"
sql = RxInSqlServer(connection_string = connection_string, num_tasks = 1)

##########################################################################################################################################
## Retrieve model.
##########################################################################################################################################
models_odbc = RxOdbcData(connection_string, table = "Model")
logistic_model = rx_read_object(models_odbc, key = model_key, deserialize = True)

##########################################################################################################################################
##	Get the column information.
##########################################################################################################################################
# Get the factor levels of the label.
Factors_sql = RxSqlServerData(sql_query = "SELECT DISTINCT Label FROM News_Train",
                              connection_string = connection_string)
levels_list  = list(rx_import(Factors_sql)["Label"])

# Write the factor name and levels into a dictionary.
factor_info = {"Label":{"type" : "factor", "levels" : [str(s) for s in levels_list]}}

##########################################################################################################################################
##	Point to the testing set and use the factor_info dictionary to specify the types of the features.
##########################################################################################################################################
News_Test_sql = RxSqlServerData(table = input,
                                connection_string = connection_string,
                                column_info = factor_info)

##########################################################################################################################################
## Logistic Regresssion scoring.
##########################################################################################################################################
# Make Predictions while featurizing the text variables separately on the fly.
# This will automatically use the same text transformation as in the training, encoded in logistic_model.

# Set the Compute Context to SQL.
rx_set_compute_context(sql)

Predictions_Intermediate_sql = RxSqlServerData(table = "Predictions_Intermediate", connection_string = connection_string)

rx_predict(model = logistic_model,
           data = News_Test_sql,
		   output_data = Predictions_Intermediate_sql,
           extra_vars_to_write = ["Label", "Id"],
		   overwrite = True)
'
, @params = N'@input varchar(max), @model_key varchar(max), @server_name varchar(max), @database_name varchar(max)'	  
, @input = @input
, @model_key = @model_key
, @server_name = @server_name
, @database_name = @database_name

-- Join the Predictions table with the Label names to get the actual predicted labels.
DECLARE @sql0 nvarchar(max);
SELECT @sql0 = N'
DROP TABLE if exists ' + @output 
EXEC sp_executesql @sql0

DECLARE @sql nvarchar(max);
SELECT @sql = N'
SELECT LabelNames, Predictions_Intermediate.*
INTO ' + @output +'
FROM Predictions_Intermediate INNER JOIN Label_Names 
ON Predictions_Intermediate.PredictedLabel = Label_Names.Label'
EXEC sp_executesql @sql

-- Drop the intermediate table. 
DROP TABLE Predictions_Intermediate;
;
END
GO
/****** Object:  StoredProcedure [dbo].[train_model]    Script Date: 2/22/2018 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[train_model] @model_key varchar(max) 

AS 
BEGIN

	-- Get the server and current database names.
	--DECLARE @server_name varchar(max) = @@servername;
	DECLARE @server_name varchar(max) = 'LOCALHOST';
	DECLARE @database_name varchar(max) = db_name();

	-- Train the model on the training set.	
	EXECUTE sp_execute_external_script @language = N'Python',
									   @script = N' 

##########################################################################################################################################
##	Import Modules.
##########################################################################################################################################
from revoscalepy import rx_set_compute_context, rx_import, RxOdbcData, rx_write_object, RxSqlServerData, RxInSqlServer, RxLocalSeq
from microsoftml import rx_logistic_regression, featurize_text, n_gram_hash, rx_predict
from microsoftml.entrypoints._stopwordsremover_predefined import predefined

##########################################################################################################################################
##	Define the connection string and compute contexts.
##########################################################################################################################################
connection_string = "Driver=SQL Server;Server=" + server_name + ";Database=" + database_name + ";Trusted_Connection=true;"

sql = RxInSqlServer(connection_string = connection_string, num_tasks = 1)
local = RxLocalSeq()

##########################################################################################################################################
##	Get the column information.
##########################################################################################################################################
# Get the factor levels of the label.
Factors_sql = RxSqlServerData(sql_query = "SELECT DISTINCT Label FROM News_Train",
                              connection_string = connection_string)
levels_list  = list(rx_import(Factors_sql)["Label"])

# Write the factor name and levels into a dictionary.
factor_info = {"Label":{"type" : "factor", "levels" : [str(s) for s in levels_list]}}

##########################################################################################################################################
##	Point to the training set and use the factor_info dictionary to specify the types of the features.
##########################################################################################################################################
# NOTE: When using sp_execute_external_script, it is also possible to use InputDataset in order to get a dataframe containing the data below.
# RxSqlServerData is used instead of a dataframe so that the data does not have to be entirely loaded into memory.

News_Train_sql = RxSqlServerData(table = "News_Train",
                                 connection_string = connection_string,
                                 column_info = factor_info)

##########################################################################################################################################
##	Specify the training formula.
##########################################################################################################################################
## The Subject and Text are featurized separately in order to give to the words in the Subject the same weight as those in the Text. 
training_formula = "Label ~ SubjectPreprocessed + TextPreprocessed"

##########################################################################################################################################
##	Specify the features that will be created on the fly while training.. 
##########################################################################################################################################
# Define the transformation to be used to generate features.
# It will be applied on the fly during training and testing.
## Here, for each of the Subject and the Text separately, we: 
## - Remove stopwords, diacritics, punctuation and numbers.
## - Change capital letters to lower case. 
## - Hash the different words and characters. 
## The parameters or options can be further optimized by parameter sweeping.
## Other languages can be used. 
text_transform_list =[featurize_text(cols = dict(SubjectPreprocessed = "Subject", TextPreprocessed = "Text"), 
                                     language = "English",
                                     stopwords_remover = predefined(),
                                     case = "Lower",
                                     keep_diacritics  = False,                                                   
                                     keep_punctuations = False,
                                     keep_numbers = False,
                                     word_feature_extractor = n_gram_hash(hash_bits = 17, ngram_length = 2, seed = 4),
                                     char_feature_extractor = n_gram_hash(hash_bits = 17, ngram_length = 3, seed = 4),
                                     vector_normalizer = "L2")]

##########################################################################################################################################
## Train a multiclass logistic regression model and save it to SQL Server. 
##########################################################################################################################################
# Parameters of both models have been chosen for illustrative purposes, and can be further optimized.

# Set the compute context to SQL for the training. 
rx_set_compute_context(sql)

# Train a logistic regression model. 
logistic_model = rx_logistic_regression(formula = training_formula,
                                        data = News_Train_sql,
                                        method = "multiClass",
										l2_weight = 1, 
                                        l1_weight = 1,
                                        ml_transforms = text_transform_list,
                                        train_threads = 4)

# Set the compute context to local.
rx_set_compute_context(local)

# Write model to SQL Server.
models_odbc = RxOdbcData(connection_string, table = "Model")
rx_write_object(models_odbc, key = model_key, value = logistic_model, serialize = True, overwrite = True)
'
, @params = N'@model_key varchar(max) , @server_name varchar(max), @database_name varchar(max)'
, @model_key = @model_key
, @server_name = @server_name
, @database_name = @database_name
;
END
GO
