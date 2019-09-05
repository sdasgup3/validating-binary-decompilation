void leaf() {
  __asm__("rolb %cl, %bl");
  }

void main() {
  leaf();
}