void leaf() {
  __asm__("andb %cl, %bl");
  }

void main() {
  leaf();
}