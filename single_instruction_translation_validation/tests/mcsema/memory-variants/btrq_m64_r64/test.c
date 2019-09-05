void leaf() {
  __asm__("btrq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}