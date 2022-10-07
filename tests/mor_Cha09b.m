%%% project: morgen - Model Order Reduction for Gas and Energy Networks
%%% version: 1.2 (2022-10-07)
%%% authors: C. Himpe (0000-0003-2194-6754), S. Grundel (0000-0002-0209-6566)
%%% license: BSD-2-Clause (opensource.org/licenses/BSD-2-clause)
%%% summary: Test Polish pipeline from Cha09.

morgen('Cha09','training2','ode_end','imex1',{ ...
                                             'eds_ro_l', ...
                                             'eds_wx_l', ...
                                             'eds_wz_l' ...
                                             'ebt_ro_l', ...
                                             'ebt_wx_l', ...
                                             'ebt_wz_l' ...
                                             'mpod_ro_l', ...
                                             'mpod_wx_l', ...
                                             'mpod_wz_l' ...
                                            },'dt=20','ord=150','notest');

morgen('Cha09','period','ode_end','imex1',{ ...
                                           'Cha09--ode_end--imex1--eds_ro_l.rom', ...
                                           'Cha09--ode_end--imex1--eds_wx_l.rom', ...
                                           'Cha09--ode_end--imex1--eds_wz_l.rom', ...
                                           'Cha09--ode_end--imex1--ebt_ro_l.rom', ...
                                           'Cha09--ode_end--imex1--ebt_wx_l.rom', ...
                                           'Cha09--ode_end--imex1--ebt_wz_l.rom', ...
                                           'Cha09--ode_end--imex1--mpod_ro_l.rom', ...
                                           'Cha09--ode_end--imex1--mpod_wx_l.rom', ...
                                           'Cha09--ode_end--imex1--mpod_wz_l.rom', ...
                                          },'dt=20','ord=150','ys=-14');

morgen('Cha09','period','ode_end','generic',{},'dt=20');

