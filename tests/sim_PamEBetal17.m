%%% project: morgen - Model Order Reduction for Gas and Energy Networks
%%% version: 1.0 (2021-06-22)
%%% authors: C. Himpe (0000-0003-2194-6754), S. Grundel (0000-0002-0209-6566)
%%% license: BSD-2-Clause (opensource.org/licenses/BSD-2-clause)
%%% summary: Pipeline from PamEBetal17.

for s = {'imex1'}
    for m = {'ode_end'}

        morgen('PamEBetal17','training',m{:},s{:},{},'dt=60');
    end%for
end%for

