void leaf() {
  __asm__("cmpxchgl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}