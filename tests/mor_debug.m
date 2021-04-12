%%% project: morgen - Model Order Reduction for Gas and Energy Networks
%%% version: 0.99 (2021-04-12)
%%% authors: C. Himpe (0000-0003-2194-6754), S. Grundel (0000-0002-0209-6566)
%%% license: BSD-2-Clause (opensource.org/licenses/BSD-2-clause)
%%% summary: Test and debug only

network = 'MORGEN'

for s = {'imex2'}
    for m = {'ode_end','ode_end'}
%
        morgen(network,'training',m{:},s{:},{ ...
                                             'pod_r', ...
                                             'eds_ro_l', ...
                                             'eds_wx_l', ...
                                             'eds_wz_l', ...
                                             'bpod_ro_l', ...
                                             'ebt_ro_l', ...
                                             'ebt_wx_l', ...
                                             'ebt_wz_l', ...
                                             'gopod_r', ...
                                             'ebg_ro_l', ...
                                             'ebg_wx_l', ...
                                             'ebg_wz_l', ...
                                             'dmd_r', ...
                                            },'dt=60','ord=150','notest');
%
        morgen(network,'day',m{:},s{:},{ ...
                                           ['MORGEN--',m{:},'--',s{:},'--pod_r.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--eds_ro_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--eds_wx_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--eds_wz_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--bpod_ro_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--ebt_ro_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--ebt_wx_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--ebt_wz_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--gopod_r.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--ebg_ro_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--ebg_wx_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--ebg_wz_l.rom'], ...
                                           ['MORGEN--',m{:},'--',s{:},'--dmd_r.rom'], ...
                                          },'dt=60','ord=150');
%
    end%for
end%for
