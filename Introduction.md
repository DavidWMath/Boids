3 Rules for Boids:

1. Seperation:
- Each boid must steer away from nearby voids, if there are multiple voids in the seperation range, the Boid needs to apply a weight inversly proportional to the distance between them.

Steps:
- Loop through all Boids
- Calculate the distance from the current Boid to all the other Boids.
- If the distance is less then the seperation range, we can keep track of the information in a weighted velocity variable.
- Once we have looped through all the Boids we can divide the total velocity by the number of Boids in the seperation range to get the actual seperation velocity.
- Lastly mutliply the seperation range by a custom variable to fine tune how anti-social the Boids are.

2. Alignment
- Each Boid must steer towards the average heading of the nearby "flockmates".

Steps:
- Loop through all Boids.
- Calculate the distance of the Boid vs other Boids.
- Keep track of the other Boids velocity.
- After the loop is complete, divide the resulting velocity by the total amount of Boids inside the alignment range to get the actual alignment velocity.
- Lastly can once again multiply the alignment range by a custom variable.

3. Cohesion
- Each boids must steer towards the average position of the local "flockmates".

Steps:
- Loop through all Boids.
- If the other Boid is in the cohesion range, keep track of it's position.
- After the loop divide the position by the total number of Boids in the flock to get the average position that the current Boid needs to hear towards.
- Finally, we can capture the direciton by normalizing the vector, and multiply it by our cohesion factor before returning the results.

Optimization:
- Run all the rules in one loop 
- A scouting range, that is further run on all Boids at a constant rate and then hopefully later limits the checking of the 3 rules on all the Boids. (May be worse?)


General User Modifiables:

Boid Behaviour Range:
- Seperation Range
- Alignment Range
- Cohesion Range

Boid Behaviour Weights:
- Seperation Factor
- Alignment Factor
- Cohesion Factor

Boid Speed Settings:
- Min Speed
- Max Speed
- Rotaton Speed / Swivel Speed

Boid General:
- Modifiable to follow the cursor (Would be tough but fun to do).
- How to spawn Boids (Hold Down Mouse Left Click, Press a key to spawn on mouse).
- Maximum Number of Boids.
- Would like to create "static" Boids that don't move but overarchingly effect other Boids.
- Reset feature.
- A pause/start feature (To add more boids in pausing time to watch the effect once play is resumed)

