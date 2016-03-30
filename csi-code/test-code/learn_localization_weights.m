function learn_localization_weights
    clc
    % Order of elements in X is: Cp, \sigma_{AoA}, \sigma_{ToF}, \mu_{ToF}
    %{
    X = [
            236, 0, 0.000000000, 0.640000000;
            242, 0, 0.000172614, 0.360000000;
            251, 0, 0.000166400, 0.360000000;
            251, 0, 0.000166400, 0.360000000;
            251, 0, 0.000166400, 0.960000000;
            236, 0, 0.000000000, 0.040000000;
            251, 0, 0.000166400, 0.960000000;
            229, 0, 0.000116387, 0.043144105;
            242, 0, 0.000172614, 0.960000000;
            249, 0, 0.000167742, 0.360000000;
            229, 0, 0.000116387, 0.643144105;
            238, 0, 0.000399390, 0.658487395;
            238, 0, 0.000400667, 0.061008403;
            238, 0, 0.000400667, 0.661008403;
            238, 0, 0.000399390, 0.058487395;
            249, 0, 0.000167742, 0.960000000;
    ];
    prep_Y = [
            -5, -38;
            71, -38;
            25, -38;
            -38, -38;
            -38, -38;
            -5, -38;
            25, -38;
            71, -38;
            71, -38;
            -5, -38;
            71, -38;
            25, -38;
            -38, -38;
            -38, -38;
            25, -38;
            -5, -38;
    ];
    %}

    X = [
        182, 0.000049212, 0.000000000, 0.482758621;
        201, 0.000002475, 0.000000000, 0.724137931;
        201, 0.000000000, 0.000000000, 0.724137931;
        201, 0.000000628, 0.000000000, 0.724137931;
        200, 0.000000000, 0.000087955, 0.997241379;
        201, 0.000000628, 0.000000000, 0.206896552;
        182, 0.000049212, 0.000000000, 1.000000000;
        185, 0.000000000, 0.000000000, 1.000000000;
        183, 0.000053840, 0.000000000, 0.206896552;
        201, 0.000002475, 0.000000000, 0.206896552;
        183, 0.000053840, 0.000000000, 0.724137931;
        227, 0.000008308, 0.000727269, 0.476378551;
        229, 0.000008240, 0.000769478, 0.476133112;
        229, 0.000008714, 0.000769478, 0.476133112;
        201, 0.000000000, 0.000087553, 0.997255104;
        201, 0.000000000, 0.000000000, 0.206896552;
        236, 0.000000000, 0.000000000, 0.640000000;
        242, 0.000000000, 0.000172614, 0.360000000;
        251, 0.000000000, 0.000166400, 0.360000000;
        251, 0.000000000, 0.000166400, 0.360000000;
        251, 0.000000000, 0.000166400, 0.960000000;
        236, 0.000000000, 0.000000000, 0.040000000;
        251, 0.000000000, 0.000166400, 0.960000000;
        229, 0.000000000, 0.000116387, 0.043144105;
        242, 0.000000000, 0.000172614, 0.960000000;
        249, 0.000000000, 0.000167742, 0.360000000;
        229, 0.000000000, 0.000116387, 0.643144105;
        238, 0.000000000, 0.000399390, 0.658487395;
        238, 0.000000000, 0.000400667, 0.061008403;
        238, 0.000000000, 0.000400667, 0.661008403;
        238, 0.000000000, 0.000399390, 0.058487395;
        249, 0.000000000, 0.000167742, 0.960000000;
        212, 0.000143775, 0.000429314, 0.382749326;
        226, 0.000126292, 0.000634921, 0.642857143;
        226, 0.000117799, 0.000634921, 0.642857143;
        216, 0.000021660, 0.000427148, 0.642857143;
        226, 0.000117799, 0.000634921, 0.107142857;
        216, 0.000021660, 0.000427148, 0.107142857;
        226, 0.000207771, 0.000790641, 0.923514539;
        226, 0.000126292, 0.000786552, 0.923672566;
        216, 0.000021660, 0.000597106, 0.922949735;
        226, 0.000126292, 0.000634921, 0.107142857;
        240, 0.000256709, 0.002356670, 0.632440476;
        226, 0.000126292, 0.000786552, 0.387958281;
        226, 0.000117799, 0.000798668, 0.387484197;
        216, 0.000021660, 0.000597106, 0.387235450;
        226, 0.000117799, 0.000798668, 0.923198483;
        226, 0.000207771, 0.000634921, 0.107142857;
        14, 0.000000000, 0.000000000, 1.000000000;
        14, 0.000000000, 0.000000000, 1.000000000;
        14, 0.000000000, 0.000000000, 1.000000000;
        14, 0.000000000, 0.000000000, 1.000000000;
        14, 0.000000000, 0.000000000, 0.034482759;
        14, 0.000000000, 0.000000000, 0.034482759;
        14, 0.000000000, 0.000000000, 0.034482759;
        14, 0.000000000, 0.000000000, 0.034482759;
        245, 0.000000000, 0.000136450, 0.517241379;
        245, 0.000000000, 0.000136450, 0.517241379;
        245, 0.000000000, 0.000136450, 0.517241379;
        245, 0.000000000, 0.000136450, 0.517241379;
        236, 0.000000000, 0.000295529, 0.783167738;
        231, 0.000000000, 0.000263639, 0.781758471;
        231, 0.000000000, 0.000267085, 0.781459919;
        231, 0.000000000, 0.000267085, 0.781459919;
        231, 0.000000000, 0.000267085, 0.264218540;
        231, 0.000000000, 0.000267085, 0.264218540;
        231, 0.000000000, 0.000263639, 0.264517092;
        236, 0.000000000, 0.000295529, 0.265926359;
        198, 0.000000000, 0.000000000, 0.360000000;
        198, 0.000005526, 0.000000000, 0.360000000;
        200, 0.000000000, 0.000000000, 0.640000000;
        201, 0.000009384, 0.000000000, 0.360000000;
        198, 0.000000000, 0.000000000, 0.040000000;
        201, 0.000009384, 0.000000000, 0.960000000;
        198, 0.000005526, 0.000000000, 0.960000000;
        200, 0.000000000, 0.000000000, 0.040000000;
        211, 0.000020675, 0.000106161, 0.042843602;
        197, 0.000000000, 0.000000000, 0.960000000;
        198, 0.000000000, 0.000000000, 0.640000000;
        224, 0.000032364, 0.000200769, 0.640357143;
        197, 0.000000000, 0.000000000, 0.360000000;
        227, 0.000034664, 0.000347059, 0.644581498;
        214, 0.000023645, 0.000239568, 0.047289720;
        198, 0.000000000, 0.000000000, 0.960000000;
        231, 0.000000000, 0.000584481, 0.666666667;
        227, 0.000000000, 0.000497712, 0.666666667;
        230, 0.000000000, 0.000634955, 0.666666667;
        233, 0.000000000, 0.000626744, 0.666666667;
        230, 0.000000000, 0.000615161, 0.951690821;
        233, 0.000000000, 0.000626744, 0.111111111;
        231, 0.000000000, 0.000584378, 0.952060285;
        227, 0.000000000, 0.000539050, 0.952194485;
        231, 0.000000000, 0.000584481, 0.111111111;
        230, 0.000000000, 0.000634955, 0.111111111;
        233, 0.000000000, 0.000608829, 0.951835956;
        231, 0.000000000, 0.000584378, 0.396504730;
        227, 0.000000000, 0.000539050, 0.396638930;
        230, 0.000000000, 0.000615161, 0.396135266;
        233, 0.000000000, 0.000608829, 0.396280401;
        227, 0.000000000, 0.000497712, 0.111111111;
        241, 0.000599621, 0.000000000, 0.347826087;
        241, 0.000451567, 0.000000000, 0.652173913;
        241, 0.000156330, 0.000000000, 0.652173913;
        241, 0.000211103, 0.000000000, 0.652173913;
        241, 0.000156330, 0.000000000, 1.000000000;
        241, 0.000599621, 0.000000000, 1.000000000;
        241, 0.000451567, 0.000000000, 1.000000000;
        241, 0.000599621, 0.000000000, 0.652173913;
        241, 0.000451567, 0.000000000, 0.347826087;
        241, 0.000156330, 0.000000000, 0.347826087;
        241, 0.000211103, 0.000000000, 0.347826087;
        241, 0.000211103, 0.000000000, 1.000000000;
    ];
    prep_Y = [
        86, -2;
        -34, -2;
        -2, -2;
        29, -2;
        29, -2;
        29, -2;
        86, -2;
        -34, -2;
        86, -2;
        -34, -2;
        86, -2;
        -34, -2;
        -2, -2;
        29, -2;
        -2, -2;
        -2, -2;
        -5, -38;
        71, -38;
        25, -38;
        -38, -38;
        -38, -38;
        -5, -38;
        25, -38;
        71, -38;
        71, -38;
        -5, -38;
        71, -38;
        25, -38;
        -38, -38;
        -38, -38;
        25, -38;
        -5, -38;
        58, -45;
        20, -45;
        -45, -45;
        -11, -45;
        -45, -45;
        -11, -45;
        59, -45;
        20, -45;
        -11, -45;
        20, -45;
        59, -45;
        20, -45;
        -45, -45;
        -11, -45;
        -45, -45;
        59, -45;
        -10, -10;
        59, -10;
        -44, -10;
        20, -10;
        -44, -10;
        20, -10;
        59, -10;
        -10, -10;
        -10, -10;
        59, -10;
        -44, -10;
        20, -10;
        -10, -10;
        59, -10;
        -44, -10;
        20, -10;
        -44, -10;
        20, -10;
        59, -10;
        -10, -10;
        -11, 58;
        58, 58;
        -45, 58;
        19, 58;
        -11, 58;
        19, 58;
        58, 58;
        -45, 58;
        58, 58;
        -45, 58;
        -11, 58;
        58, 58;
        -45, 58;
        19, 58;
        19, 58;
        -11, 58;
        -16, 14;
        14, 14;
        -52, 14;
        50, 14;
        -52, 14;
        50, 14;
        -16, 14;
        14, 14;
        -16, 14;
        -52, 14;
        50, 14;
        -16, 14;
        14, 14;
        -52, 14;
        50, 14;
        14, 14;
        59, -11;
        -44, -11;
        -11, -11;
        20, -11;
        -11, -11;
        59, -11;
        -44, -11;
        59, -11;
        -44, -11;
        -11, -11;
        20, -11;
        20, -11;
    ];

    Y_left_desk = zeros(size(prep_Y, 1), 1);
    for ii = 1:size(prep_Y, 1)
        temp = prep_Y(ii, 1) - prep_Y(ii, 2);
        if temp == 0
            Y_left_desk(ii, 1) = 1;
        else
            Y_left_desk(ii, 1) = 0;
        end
    end
    svm_model = fitcsvm(X, Y_left_desk)
    svm_model.Beta
    svm_model.KernelParameters.Scale
    svm_model.Bias
end