## Overview
This part of the NoShowGuard project uses Generative AI to analyse patient follow-up notes and identify the reasons behind appointment no-shows. Google Gemini is used to extract meaningful insights from unstructured patient feedback and generate actionable recommendations.

## Objectives
- Analyse patient follow-up notes using Generative AI.
- Identify the root causes of appointment no-shows.
- Generate concise summaries of patient feedback.
- Recommend suitable actions to reduce future no-shows.
- Validate AI-generated responses using structured output validation.
- Integrate AI insights with appointment-related information.

## Workflow

### 4.1 Dataset Loading and Exploration
- Loaded the follow-up notes dataset containing 30 records.
- Examined dataset structure, columns, and missing values.
- Identified missing patient feedback for further handling.

### 4.2 Gemini API Integration
- Integrated Google Gemini API using Python.
- Configured API credentials securely through Google Colab Secrets.
- Tested API connectivity and model responses.
- Used Gemini to analyse patient feedback and extract structured insights.

### 4.3 Structured AI Output and Validation
- Defined a structured response format for AI-generated insights.
- Extracted root cause, confidence score, summary, and recommended action.
- Applied validation rules to check response quality and consistency.
- Handled invalid or incomplete responses appropriately.

### 4.4 AI Analysis and Final Integration
- Analysed patient follow-up notes using Gemini.
- Generated root-cause classifications and recommendations.
- Summarised AI-generated insights for interpretation.
- Prepared the AI analysis output for integration with appointment data.

## AI Analysis Results
- Total follow-up notes: 30
- Notes successfully analysed using Gemini: 10
- Root causes identified in the analysed sample:
  - No Reminder: 2
  - Distance: 2
  - Unknown: 2
  - Scheduling Conflict: 2
  - Cost: 1
  - Health Issue: 1

## Technologies Used
- Python
- Pandas
- Google Gemini API
- Google Colab
- Pydantic
- JSON

## Key Learning Outcomes
- Integrating Generative AI APIs into Python workflows.
- Analysing unstructured text using LLMs.
- Designing structured AI outputs.
- Validating AI-generated responses.
- Handling API errors and incomplete responses.
- Applying AI insights to real-world operational problems.

## Conclusion
This part demonstrates how Generative AI can transform unstructured patient feedback into actionable insights. By identifying the reasons behind missed appointments, NoShowGuard supports better patient communication and more informed strategies for reducing appointment no-shows.
