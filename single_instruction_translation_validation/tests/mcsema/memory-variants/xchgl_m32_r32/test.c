void leaf() {
  __asm__("xchgl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}