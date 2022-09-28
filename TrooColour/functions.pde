void randReset() { // Half chance of both randoms being equal, half chance of not
  if (boolean(floor(random(2)))) {
    rand1 = rand2 = floor(random(5));
  } else { // If not, make sure neither random are equal
    while (true) {
      rand1 = floor(random(5));
      rand2 = floor(random(5));
      if (rand1 != rand2) break;
    }
  }
}
