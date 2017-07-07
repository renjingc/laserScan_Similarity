kdtest = KDTreeSearcher(feat_08_1m, 'Distance', 'euclidean');

testfeat = feat_08_1m(234, :);

[Idx, D] = knnsearch(kdtest, testfeat, 'Distance', 'euclidean', 'K', 100);

