%%% project: morgen - Model Order Reduction for Gas and Energy Networks
%%% version: 1.2 (2022-10-07)
%%% authors: C. Himpe (0000-0003-2194-6754), S. Grundel (0000-0002-0209-6566)
%%% license: BSD-2-Clause (opensource.org/licenses/BSD-2-clause)
%%% summary: Test hypothetical network from LotH67.

%
morgen('LotH67c','training','ode_end','imex1',{ ...
                                               'pod_r', ...
                                               'gopod_r', ...
                                               'dmd_r', ...
                                               'eds_ro_l', ...
                                               'eds_wx_l', ...
                                               'eds_wz_l'
                                              },'dt=15','notest');
%
morgen('LotH67c','halfday','ode_end','imex1',{ ...
                                              'LotH67c--ode_end--imex1--pod_r.rom', ...
                                              'LotH67c--ode_end--imex1--gopod_r.rom', ...
                                              'LotH67c--ode_end--imex1--dmd_r.rom', ...
                                              'LotH67c--ode_end--imex1--eds_ro_l.rom', ...
                                              'LotH67c--ode_end--imex1--eds_wx_l.rom', ...
                                              'LotH67c--ode_end--imex1--eds_wz_l.rom'
                                             },'dt=15','ys=-10');
%

