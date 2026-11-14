# Module 4: Excel Progress Monitoring and Criterion Flags

## Learning targets

- Enter session-level data in a structured Excel table.
- Calculate independent accuracy without confusing prompted and independent responses.
- Create a line chart and a transparent criterion flag.
- Verify formulas before relying on the workbook.

## Workbook layout

Create a workbook with two sheets:

**Sheet 1: Data**
Use one row per session. Add these columns:

| Column | Heading |
|---|---|
| A | Session |
| B | Date |
| C | Setting |
| D | Opportunities |
| E | Independent Correct |
| F | Prompted Correct |
| G | Incorrect/No Response |
| H | Independent Accuracy |
| I | Qualifying Session? |
| J | Notes |

Convert the range to an Excel Table (Insert → Table) and name it `ProgressData`. Do not type over formula columns H or I.

**Sheet 2: Dashboard**
Include the goal criterion, a chart, qualifying-session count, and a plain-language status.

## Formulas

In H2 (Independent Accuracy), enter and fill down:

```excel
=IFERROR(IF(OR(D2="",D2=0),"",E2/D2),"")
```

Format column H as Percentage. This formula intentionally returns a blank when no valid opportunities are entered.

For the requested training rule, a session qualifies when independent accuracy is **greater than** 90% and the row has at least one valid opportunity. In I2:

```excel
=IF(AND(ISNUMBER(H2),H2>90%),"Yes","No")
```

This simple version treats any session above 90% as qualifying. If the IEP requires minimum opportunities, a specific setting, or other conditions, add those conditions to the formula before use.

On the Dashboard, if qualifying-session flags are in Data!I2:I101:

```excel
=COUNTIF(Data!I2:I101,"Yes")
```

To display whether at least three qualifying sessions have been recorded:

```excel
=IF(COUNTIF(Data!I2:I101,"Yes")>=3,"Training criterion met: 3+ qualifying sessions","Not yet met")
```

**Important:** This formula counts any three qualifying rows, not necessarily consecutive sessions. If the goal says “three consecutive sessions,” use a consecutive-run formula or verify the sequence manually. The written IEP measurement rule must match the workbook logic.

## Create the graph

1. Select Session (column A) and Independent Accuracy (column H).
2. Choose Insert → Line or Area Chart → Line with Markers.
3. Add chart title: “Independent Accuracy by Session.”
4. Label the vertical axis “Independent accuracy (%)”.
5. Set the vertical axis from 0% to 100% if appropriate for the data.
6. Add a horizontal 90% reference line if your Excel version/workflow supports a helper series. Label it “90% reference”; remember the qualifying rule is **greater than** 90%, not equal to 90%.
7. Keep prompted performance separate. Do not plot prompted correctness as independent accuracy.

## Optional formula for a consecutive three-session rule

If I2 contains Yes/No, enter in J2 (or another unused column) and fill down:

```excel
=IF(AND(I2="Yes",I1="Yes",I0="Yes"),"3 consecutive","")
```

This illustrative formula is not valid as written for the first data rows because Excel does not have row 0. For a robust setup, place a helper count in J2:

```excel
=IF(I2="Yes",1,0)
```

In J3 and fill down:

```excel
=IF(I3="Yes",J2+1,0)
```

Then the dashboard can use:

```excel
=IF(MAX(Data!J2:J101)>=3,"3 consecutive qualifying sessions","Not yet met")
```

This requires rows to be sorted chronologically and no missing session rows to be mistaken for consecutive observations. Decide whether invalid sessions break the sequence and adapt the rule accordingly.

## Validation checks

- Opportunities must be positive whole numbers for a scored session.
- Independent Correct cannot exceed Opportunities.
- Independent Correct + Prompted Correct + Incorrect/No Response should equal Opportunities if categories are mutually exclusive and exhaustive.
- Do not count “not observed” as incorrect.
- Confirm dates and session order.
- Test formulas with known cases: 9/10 = 90% (does not qualify); 10/11 = 90.91% (qualifies); 8/10 = 80% (does not qualify); blank opportunities = blank accuracy.
- Test three qualifying rows and fewer than three qualifying rows.
- Check the chart after adding a new row.

## Accessibility and safe use

Use clear labels, high contrast, keyboard-accessible tables, and no color-only status. Add text status in addition to any conditional formatting. Protect formula cells if appropriate, but ensure authorized staff can maintain the workbook. Store it only in district-approved locations.

## Scope of the status flag

“Training criterion met” means only that the entered rows meet the formula as written. It does not automatically mean the IEP goal is mastered, services should change, or the student no longer needs instruction. Review data quality, independence, generalization, maintenance, and team-defined conditions before making instructional decisions.
