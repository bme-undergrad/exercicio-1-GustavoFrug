function t = exercicio1(func,func_d,x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t_roots = zeros(imax,1);
t_roots(1) = x0;
erro = zeros(lenght(t)-1);

for m = 1:length(t_roots) - 1
    if m ~= 1
        erro(m) = abs((t_roots(m)-t_roots(m-1))/t_roots(m))
        if erro(m) < es
            break
        endif
    endif
        t_roots(m+1) = t_roots(m) - func(t_roots(m))/func_d(t_roots(m));
    endfor
t = t_roots(m)

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
