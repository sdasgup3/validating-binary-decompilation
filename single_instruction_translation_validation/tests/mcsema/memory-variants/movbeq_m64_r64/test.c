void leaf() {
  __asm__("movbeq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}