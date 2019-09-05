void leaf() {
  __asm__("andb %ah, %bl");
  }

void main() {
  leaf();
}