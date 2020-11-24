function [TL,HSV,TR] = bpod(WR,WO,r)
%%% project: morgen - Model Order Reduction for Gas and Energy Networks
%%% version: 0.9 (2020-11-24)
%%% authors: C. Himpe (0000-0003-2194-6754), S. Grundel (0000-0002-0209-6566)
%%% license: 2-Clause BSD (opensource.org/licenses/BSD-2-clause)
%%% summary: Approximately balance two system gramians.

    [VR,DR] = eigs(WR,min(size(WR,1),r));
    [VL,DL] = eigs(WO,min(size(WO,2),r));

    VR = VR .* sqrt(abs(diag(DR)))';
    VL = VL .* sqrt(abs(diag(DL)))';

    [U,D,V] = svd(VL' * VR);
    HSV = diag(D);
    D = sqrt(HSV)';
    TL = real(VL * (U ./ D));
    TR = real(VR * (V ./ D));
end

