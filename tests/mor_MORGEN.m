%%% project: morgen - Model Order Reduction for Gas and Energy Networks
%%% version: 0.9 (2020-11-24)
%%% authors: C. Himpe (0000-0003-2194-6754), S. Grundel (0000-0002-0209-6566)
%%% license: BSD 2-Clause (opensource.org/licenses/BSD-2-clause)
%%% summary: MORGEN test network

for s = {'imex1','imex2'}
    for m = {'ode_mid','ode_end'}
%
        morgen('MORGEN','training',m{:},s{:},{ ...
                                              'pod_r', ...
                                              'eds_ro', ...
                                              'eds_wx', ...
                                              'eds_wz', ...
                                              'bpod_ro', ...
                                              'ebt_ro', ...
                                              'ebt_wx', ...
                                              'ebt_wz', ...
                                              'ebg_ro', ...
                                              'ebg_wx', ...
                                              'ebg_wz', ...
                                              'dmd_r', ...
                                             },'dt=60','ord=150','notest');
%
        morgen('MORGEN','day',m{:},s{:},{ ...
                                         ['MORGEN--',m{:},'--',s{:},'--pod_r.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--eds_ro.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--eds_wx.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--eds_wz.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--bpod_ro.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--ebt_ro.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--ebt_wx.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--ebt_wz.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--ebg_ro.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--ebg_wx.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--ebg_wz.rom'], ...
                                         ['MORGEN--',m{:},'--',s{:},'--dmd_r.rom'], ...
                                        },'dt=60','ord=150','ys=-8');
%
    end%for
end%for

morgen('MORGEN','day','ode_end','generic',{},'dt=60');

