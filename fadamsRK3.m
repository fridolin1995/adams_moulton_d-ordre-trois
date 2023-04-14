function w=fadamsRK3(t,z)
    % Fonction de Cauchy associee au  modèle proie predateur par adams moulton3    
    % alpha,beta,gamma,ksi et sigma sont des parametres physiques
    w=[-0.00001*z(1)+100*z(2)-10*z(3)+z(4);0.0001*z(2)+10*z(3)-10*z(4);-10*z(3)+10*z(4);-10*z(4)];
end
