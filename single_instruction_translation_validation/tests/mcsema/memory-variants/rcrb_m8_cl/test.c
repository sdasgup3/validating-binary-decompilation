void leaf() {
  __asm__("rcrb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}