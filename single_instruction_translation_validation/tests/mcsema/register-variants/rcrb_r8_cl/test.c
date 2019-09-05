void leaf() {
  __asm__("rcrb %cl, %bl");
  }

void main() {
  leaf();
}