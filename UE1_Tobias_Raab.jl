
#=
Fuege in dieses Template deine Loesungscodes ein.
Wichtig 1: Die Datei gemaess der Namensrichtlinien benennen.
Wichtig 2: Bitte nur die Funktionen ausprogrammieren und keine Funktionsaufrufe vornehmen.
=#


### Beispiel 1:

function greatest(x::Vector{T}, k::Integer = 1) :: Vector{T} where {T <: Real}
    # Fuege hier deinen Loesungscode ein

    # Fehlermeldungen --> Code in else 
    if k <= 0

        throw(DomainError(k, "muss größer als 0 sein!"))

    elseif k > length(x)

        throw(DomainError(k, "muss kleiner oder gleich groß der Anzahl an Elementen in x sein"))
        
    else

        # sortiere x und behalte nur die Größten k Elemente
        x_greatest_sorted = sort(copy(x), rev = true)
        splice!(x_greatest_sorted, k+1:length(x_greatest_sorted))

        # definiere res als Vektor (Platzhalter 0 wird später entfernt)
        res = [0]

        # überprüft für jedes Element in x ob es zu den größten k Elementen gehört
        for i in x

            if i in x_greatest_sorted

            # fügt das Element zu res hinzu
            push!(res, i)

            end
            
        end

        # platzhalter 0 enfternen
        popfirst!(res)

    end

    return res
end


### Beispiel 2

function nearestindex(x::Vector{<:Real}, y::Real) :: Int
    # Fuege hier deinen Loesungscode ein

    diff = [0]  

    for i in 1:length(x)

        push!(diff, x[i])



    end

    res = findmin(diff)
    
    @show diff

    return 1
end


### Beispiel 3

function swap!(x::Vector, i::Integer, j::Integer) :: Nothing
    # Fuege hier deinen Loesungscode ein
    return 
end

function bubblesort!(x::Vector{<:Real}; rev::Bool = false) :: Nothing
    # Fuege hier deinen Loesungscode ein
    return
end


### Beispiel 4

function canonicaltour(x::Vector{T}) :: Vector{T} where {T <: Integer}
    # Fuege hier deinen Loesungscode ein
    return
end


### Beispiel 5

function distance(x::Vector{<:Real}, y::Vector{<:Real}; p::Real = 2)
    # Fuege hier deinen Loesungscode ein
    return
end

