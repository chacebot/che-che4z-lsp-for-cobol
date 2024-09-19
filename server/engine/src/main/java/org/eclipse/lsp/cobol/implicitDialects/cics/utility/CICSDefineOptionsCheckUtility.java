/*
 * Copyright (c) 2024 Broadcom.
 * The term "Broadcom" refers to Broadcom Inc. and/or its subsidiaries.
 *
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *    Broadcom, Inc. - initial API and implementation
 *
 */

package org.eclipse.lsp.cobol.implicitDialects.cics.utility;

import org.antlr.v4.runtime.ParserRuleContext;
import org.eclipse.lsp.cobol.common.dialects.DialectProcessingContext;
import org.eclipse.lsp.cobol.common.error.SyntaxError;
import org.eclipse.lsp.cobol.implicitDialects.cics.CICSParser;

import static org.eclipse.lsp.cobol.implicitDialects.cics.CICSParser.RULE_cics_define;

import java.util.ArrayList;
import java.util.List;

/** Checks CICS Define rules for required and invalid options */
public class CICSDefineOptionsCheckUtility extends CICSOptionsCheckBaseUtility {

  public static final int RULE_INDEX = RULE_cics_define;

  public CICSDefineOptionsCheckUtility(DialectProcessingContext context, List<SyntaxError> errors) {
    super(context, errors);
  }

  /**
   * Entrypoint to check CICS Define rule options
   *
   * @param ctx ParserRuleContext subclass containing options
   * @param <E> A subclass of ParserRuleContext
   */
  public <E extends ParserRuleContext> void checkOptions(E ctx) {
    if (ctx.getClass() == CICSParser.Cics_define_activityContext.class) {
      checkActivity((CICSParser.Cics_define_activityContext) ctx);
    } else if (ctx.getClass() == CICSParser.Cics_define_composite_eventContext.class) {
      checkCompositeEvent((CICSParser.Cics_define_composite_eventContext) ctx);
    } else if (ctx.getClass() == CICSParser.Cics_define_counter_dcounterContext.class) {
      checkCounter((CICSParser.Cics_define_counter_dcounterContext) ctx);
    } else if (ctx.getClass() == CICSParser.Cics_define_input_eventContext.class) {
      checkInputEvent((CICSParser.Cics_define_input_eventContext) ctx);
    } else if (ctx.getClass() == CICSParser.Cics_define_processContext.class) {
      checkDefineProcess((CICSParser.Cics_define_processContext) ctx);
    } else if (ctx.getClass() == CICSParser.Cics_define_timerContext.class) {
      checkDefineTimer((CICSParser.Cics_define_timerContext) ctx);
    }
  }

  private void checkActivity(CICSParser.Cics_define_activityContext ctx) {
    checkHasMandatoryOptions(ctx.TRANSID(), ctx, "TRANSID");

    List<RuleContextData> contexts = new ArrayList<>();
    contexts.add(new RuleContextData(ctx.EVENT(), "EVENT"));
    contexts.add(new RuleContextData(ctx.TRANSID(), "TRANSID"));
    contexts.add(new RuleContextData(ctx.PROGRAM(), "PROGRAM"));
    contexts.add(new RuleContextData(ctx.USERID(), "USERID"));
    contexts.add(new RuleContextData(ctx.ACTIVITYID(), "ACTIVITYID"));
    harvestResponseHandlers(ctx.cics_handle_response(), contexts);
    checkDuplicates(contexts);
  }

  private void checkCompositeEvent(CICSParser.Cics_define_composite_eventContext ctx) {
    checkHasMandatoryOptions(ctx.EVENT(), ctx, "EVENT");
    if (ctx.OR().isEmpty()) checkHasMandatoryOptions(ctx.AND(), ctx, "AND");
    else checkHasIllegalOptions(ctx.AND(), "AND");
    if (ctx.AND().isEmpty()) checkHasMandatoryOptions(ctx.OR(), ctx, "OR");
    else checkHasIllegalOptions(ctx.OR(), "OR");

    List<RuleContextData> contexts = new ArrayList<>();
    contexts.add(new RuleContextData(ctx.EVENT(), "EVENT"));
    contexts.add(new RuleContextData(ctx.AND(), "AND"));
    contexts.add(new RuleContextData(ctx.OR(), "OR"));
    contexts.add(new RuleContextData(ctx.SUBEVENT1(), "SUBEVENT1"));
    contexts.add(new RuleContextData(ctx.SUBEVENT2(), "SUBEVENT2"));
    contexts.add(new RuleContextData(ctx.SUBEVENT3(), "SUBEVENT3"));
    contexts.add(new RuleContextData(ctx.SUBEVENT4(), "SUBEVENT4"));
    contexts.add(new RuleContextData(ctx.SUBEVENT5(), "SUBEVENT5"));
    contexts.add(new RuleContextData(ctx.SUBEVENT6(), "SUBEVENT6"));
    contexts.add(new RuleContextData(ctx.SUBEVENT7(), "SUBEVENT7"));
    contexts.add(new RuleContextData(ctx.SUBEVENT8(), "SUBEVENT8"));
    harvestResponseHandlers(ctx.cics_handle_response(), contexts);
    checkDuplicates(contexts);
  }

  private void checkCounter(CICSParser.Cics_define_counter_dcounterContext ctx) {
    if (ctx.VALUE().isEmpty()) checkHasIllegalOptions(ctx.MINIMUM(), "MINIMUM");

    List<RuleContextData> contexts = new ArrayList<>();
    contexts.add(new RuleContextData(ctx.POOL(), "POOL"));
    contexts.add(new RuleContextData(ctx.VALUE(), "VALUE"));
    contexts.add(new RuleContextData(ctx.MINIMUM(), "MINIMUM"));
    contexts.add(new RuleContextData(ctx.MAXIMUM(), "MAXIMUM"));
    contexts.add(new RuleContextData(ctx.NOSUSPEND(), "NOSUSPEND"));
    harvestResponseHandlers(ctx.cics_handle_response(), contexts);
    checkDuplicates(contexts);
  }

  private void checkInputEvent(CICSParser.Cics_define_input_eventContext ctx) {
    checkHasMandatoryOptions(ctx.EVENT(), ctx, "EVENT");

    List<RuleContextData> contexts = new ArrayList<>();
    contexts.add(new RuleContextData(ctx.EVENT(), "EVENT"));
    harvestResponseHandlers(ctx.cics_handle_response(), contexts);
    checkDuplicates(contexts);
  }

  private void checkDefineProcess(CICSParser.Cics_define_processContext ctx) {
    checkHasMandatoryOptions(ctx.PROCESSTYPE(), ctx, "PROCESSTYPE");
    checkHasMandatoryOptions(ctx.TRANSID(), ctx, "TRANSID");

    List<RuleContextData> contexts = new ArrayList<>();
    contexts.add(new RuleContextData(ctx.PROCESSTYPE(), "PROCESSTYPE"));
    contexts.add(new RuleContextData(ctx.TRANSID(), "TRANSID"));
    contexts.add(new RuleContextData(ctx.PROGRAM(), "PROGRAM"));
    contexts.add(new RuleContextData(ctx.USERID(), "USERID"));
    contexts.add(new RuleContextData(ctx.NOCHECK(), "NOCHECK"));
    harvestResponseHandlers(ctx.cics_handle_response(), contexts);
    checkDuplicates(contexts);
  }

  private void checkDefineTimer(CICSParser.Cics_define_timerContext ctx) {

    if (ctx.AFTER().isEmpty()) {
      checkHasIllegalOptions(ctx.DAYS(), "DAYS");
      if (checkHasMandatoryOptions(ctx.AT(), ctx, "AT")) {
        // AT CASE
        if (ctx.HOURS().size() + ctx.MINUTES().size() + ctx.SECONDS().size() == 0) {
          checkHasMandatoryOptions(ctx.HOURS(), ctx, "HOURS or MINUTES or SECONDS");
        }
        if (ctx.ON().isEmpty()) {
          // ON
          checkHasIllegalOptions(ctx.YEAR(), "YEAR without ON");
          checkHasIllegalOptions(ctx.MONTH(), "MONTH without ON");
          checkHasIllegalOptions(ctx.DAYOFYEAR(), "DAYOFYEAR without ON");
          checkHasIllegalOptions(ctx.DAYOFMONTH(), "DAYOFMONTH without ON");
        } else if (ctx.YEAR().isEmpty()) {
          // YEAR
          checkHasIllegalOptions(ctx.MONTH(), "MONTH without YEAR");
          checkHasIllegalOptions(ctx.DAYOFYEAR(), "DAYOFYEAR without YEAR");
          checkHasIllegalOptions(ctx.DAYOFMONTH(), "DAYOFMONTH without YEAR");
        } else if (!ctx.DAYOFYEAR().isEmpty()) {
          // DAYOFYEAR
          checkHasIllegalOptions(ctx.MONTH(), "MONTH without DAYOFYEAR");
          checkHasIllegalOptions(ctx.DAYOFMONTH(), "DAYOFMONTH without DAYOFYEAR");
        } else {
          // MONTH and DAYOFMONTH
          checkHasIllegalOptions(ctx.DAYOFYEAR(), "DAYOFYEAR with MONTH");
          checkHasMandatoryOptions(ctx.MONTH(), ctx, "MONTH");
          checkHasMandatoryOptions(ctx.DAYOFMONTH(), ctx, "DAYOFMONTH");
        }
      } else {
        // Neither AT or AND
        checkHasMandatoryOptions(ctx.AFTER(), ctx, "AFTER");
      }
    } else if (ctx.AT().isEmpty() && checkHasMandatoryOptions(ctx.AFTER(), ctx, "AFTER")) {
      // AFTER CASE
      checkHasIllegalOptions(ctx.ON(), "ON");
      checkHasIllegalOptions(ctx.YEAR(), "YEAR");
      checkHasIllegalOptions(ctx.MONTH(), "MONTH");
      checkHasIllegalOptions(ctx.DAYOFYEAR(), "DAYOFYEAR");
      checkHasIllegalOptions(ctx.DAYOFMONTH(), "DAYOFMONTH");
      if (ctx.DAYS().size() + ctx.HOURS().size() + ctx.MINUTES().size() + ctx.SECONDS().size()
          == 0) {
        checkHasMandatoryOptions(ctx.DAYS(), ctx, "DAYS or HOURS or MINUTES or SECONDS");
      }
    } else {
      // Both AT and AFTER
      checkHasIllegalOptions(ctx.AFTER(), "AFTER with AT");
      checkHasIllegalOptions(ctx.AT(), "AT with AFTER");
      checkHasIllegalOptions(ctx.ON(), "ON");
      checkHasIllegalOptions(ctx.YEAR(), "YEAR");
      checkHasIllegalOptions(ctx.MONTH(), "MONTH");
      checkHasIllegalOptions(ctx.DAYOFYEAR(), "DAYOFYEAR");
      checkHasIllegalOptions(ctx.DAYOFMONTH(), "DAYOFMONTH");
      checkHasIllegalOptions(ctx.DAYS(), "DAYS");
    }

    List<RuleContextData> contexts = new ArrayList<>();
    contexts.add(new RuleContextData(ctx.EVENT(), "EVENT"));
    contexts.add(new RuleContextData(ctx.AFTER(), "AFTER"));
    contexts.add(new RuleContextData(ctx.AT(), "AT"));
    contexts.add(new RuleContextData(ctx.DAYS(), "DAYS"));
    contexts.add(new RuleContextData(ctx.HOURS(), "HOURS"));
    contexts.add(new RuleContextData(ctx.MINUTES(), "MINUTES"));
    contexts.add(new RuleContextData(ctx.SECONDS(), "SECONDS"));
    contexts.add(new RuleContextData(ctx.DAYOFYEAR(), "DAYOFYEAR"));
    contexts.add(new RuleContextData(ctx.DAYOFMONTH(), "DAYOFMONTH"));
    contexts.add(new RuleContextData(ctx.YEAR(), "YEAR"));
    contexts.add(new RuleContextData(ctx.MONTH(), "MONTH"));
    contexts.add(new RuleContextData(ctx.ON(), "ON"));
    harvestResponseHandlers(ctx.cics_handle_response(), contexts);
  }
}