int k = T;
soln_prev = solve_final(k);
while (k > 1) {
    soln = solve(K-1, soln_prev);
    save(soln, K-1);
    soln_prev = soln;
    K = K - 1;
}
